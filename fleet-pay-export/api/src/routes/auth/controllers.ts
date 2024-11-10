import { Request, Response } from "express";

import { BackendResponse } from "../../models/response";
import { AuthToken } from "../../models/auth_token";
import { UserType } from "../../models/user_type";
import { User } from "../../models/user";
import { UserUpdateRequest } from "../../models/user_update_request";

// --- start imports code ---
import { AuthUser, PrismaClient } from "@prisma/client";
import * as bcrypt from "bcrypt";
import { sign, verify } from "jsonwebtoken";
import dayjs from "dayjs";
import { EmailTemplates, OTPEmailData, sendEmailWithTemplateId } from "../../utils/email_sender";
import { uploadFile } from "../../utils/storage";

// --- end imports code ---

// --- start declarations code ---
const prisma = new PrismaClient();

export async function validateCreds(
  username: string,
  password: string
): Promise<BackendResponse<AuthUser>> {
  const authUser = await prisma.authUser.findFirst({
    where: {
      username: username,
    },
  });

  // If user is not found, return error
  if (!authUser) {
    return {
      code: 401,
      error: "Invalid authentication provided",
    };
  }

  const storedPasswordHash = authUser.passwordHash;
  const providedPasswordHash = await bcrypt.hash(password, authUser.salt);

  // If password is incorrect, return error
  if (storedPasswordHash !== providedPasswordHash) {
    return {
      code: 401,
      error: "Invalid authentication provided",
    };
  }
  return {
    code: 200,
    result: authUser,
  };
}
// --- end declarations code ---

const login = async (req: Request, res: Response) => {
  const response: BackendResponse<AuthToken> = {
    code: 200,
  };
  const username = req.body["username"] as string;
  const password = req.body["password"] as string;
  const userType = req.body["userType"] as UserType;
  try {
    // --- start login_logic code ---
    // Fetching the user by username
    const {
      result: authUser,
      error,
      code,
    } = await validateCreds(username, password);

    if (!authUser) {
      response.code = code;
      response.error = error;
      return res.send(response);
    }

    // Check if the user has access as per the userType
    let hasAccess = false;
    if (userType === "ADMIN") {
      const companyAdmin = await prisma.companyUser.findFirst({
        where: {
          userId: authUser.id,
          status: {
            not: "DISABLED",
          },
        },
      });
      hasAccess = !!companyAdmin;
    } else if (userType === "USER") {
      const contractor = await prisma.contractor.findFirst({
        where: {
          userId: authUser.id,
        },
      });
      hasAccess = !!contractor;
    } else if (userType == "SUPER_ADMIN" && authUser.superAdmin) {
      hasAccess = true;
    }

    // If user does not have access, return error
    if (!hasAccess) {
      response.code = 403;
      response.error = `Forbidden access, you are not ${userType}`;
      return res.send(response);
    }

    // Generate access token
    const expiryDate = new Date(Date.now() + 8 * 60 * 60 * 1000);
    const accessToken = sign(
      {
        userId: authUser.id,
        userType: userType,
      },
      process.env.JWT_SECRET!,
      { expiresIn: "8h" }
    );

    const refreshToken = sign(
      {
        userId: authUser.id,
        userType: userType,
      },
      process.env.JWT_SECRET!,
      { expiresIn: "30d" }
    );

    await prisma.userSession.create({
      data: {
        userId: authUser.id,
        ipAddress: req.socket.remoteAddress,
        refreshToken: refreshToken,
        expiresAt: expiryDate,
      },
    });
    if (userType === "ADMIN") {
      await prisma.companyUser.updateMany({
        where: {
          userId: authUser.id,
        },
        data: {
          status: "ACTIVE",
        },
      });
    }
    response.result = {
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: expiryDate,
    };
    // --- end login_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start login_error code ---

    // --- end login_error code ---
  }
  res.status(response.code).send(response)
}


const changePassword = async (req: Request, res: Response) => {
  const response: BackendResponse<string> = {
    code: 200,
  };
  const oldPassword = req.body["oldPassword"] as string;
  const newPassword = req.body["newPassword"] as string;
  try {
    // --- start change_password_logic code ---
    console.log(oldPassword, newPassword);
    // checking if the userId parameter is present in the headers
    const userId = req.headers["userId"] as string;
    if (!userId) {
      response.code = 401;
      response.error = "Unauthorized access";
      return res.send(response);
    }

    // Fetching the user by userId
    const authUser = await prisma.authUser.findFirst({
      where: {
        id: userId,
      },
    });
    // If user is not found, return error
    if (!authUser) {
      response.code = 404;
      response.error = "User not found";
      return res.send(response);
    }

    // Checking if the old password is correct
    const storedPasswordHash = authUser.passwordHash;
    const providedPasswordHash = await bcrypt.hash(oldPassword, authUser.salt);
    if (storedPasswordHash !== providedPasswordHash) {
      response.code = 404;
      response.error = "Old password is incorrect";
      return res.send(response);
    }

    // Changing the password
    const salt = await bcrypt.genSalt(10);
    const newHash = await bcrypt.hash(newPassword, salt);
    console.log(newPassword, newHash);
    await prisma.authUser.update({
      where: {
        id: userId,
      },
      data: {
        passwordHash: newHash,
        salt: salt,
      },
    });

    const user = await prisma.user.findFirst({
      where: {
        id: userId,
      },
    });

    if (!user) {
      response.code = 404;
      response.error = "User not found";
      return res.send(response);
    }

    if (user.status === "CHANGE_PASSWORD") {
      await prisma.user.update({
        where: {
          id: userId,
        },
        data: {
          status: "COMPLETED",
        },
      });
    }
    response.result = "Password changed successfully";
    // --- end change_password_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start change_password_error code ---

    // --- end change_password_error code ---
  }
  res.status(response.code).send(response)
}


const me = async (req: Request, res: Response) => {
  const response: BackendResponse<User> = {
    code: 200,
  };

  try {
    // --- start me_logic code ---
    const userId = req.headers["userId"] as string;
    if (!userId) {
      response.code = 401;
      response.error = "Unauthorized access";
      return res.send(response);
    }

    // Fetching the user by userId
    const user = await prisma.user.findFirst({
      where: {
        id: userId,
      },
    });
    if (!user) {
      response.code = 404;
      response.error = "Usernot found";
      return res.send(response);
    }

    response.result = user;
    // --- end me_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start me_error code ---

    // --- end me_error code ---
  }
  res.status(response.code).send(response)
}


const updateMe = async (req: Request, res: Response) => {
  const response: BackendResponse<User> = {
    code: 200,
  };
  const user = req.body["user"] as UserUpdateRequest;
  try {
    // --- start update_me_logic code ---
    // checking if the userId parameter is present in the headers
    const userId = req.headers["userId"] as string;
    if (!userId) {
      response.code = 401;
      response.error = "Unauthorized access";
      return res.send(response);
    }

    if (user.profilePicture) {
      user.profilePicture = await uploadFile(
        `user/${userId}/profile_picture`,
        user.profilePicture,
      );
    }

    // Fetching the user by userId
    const updatedUser = await prisma.user.update({
      where: {
        id: userId,
      },
      data: {
        name: user.name ?? undefined,
        profilePicture: user.profilePicture ?? undefined,
        phoneNumber: user.phoneNumber ?? undefined,
        fcmTokens: user.fcmTokens ?? undefined,
      },
    });

    response.result = updatedUser;

    // --- end update_me_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start update_me_error code ---

    // --- end update_me_error code ---
  }
  res.status(response.code).send(response)
}


const sendForgotPasswordOtp = async (req: Request, res: Response) => {
  const response: BackendResponse<string> = {
    code: 200,
  };
  const email = req.body["email"] as string;
  try {
    // --- start send_forgot_password_otp_logic code ---
    const user = await prisma.user.findFirst({
      where: {
        email: email,
      },
    });

    if (!user) {
      response.code = 404;
      response.error = "User not found";
      return res.send(response);
    }
    const otp = Math.floor(100000 + Math.random() * 900000).toFixed(0);
    const expiryMinutes = 5;
    await sendEmailWithTemplateId({
      to: user.email,
      templateId: EmailTemplates.OTP_EMAIL,
      templateValues: {
        name: user.name,
        otp_code: otp,
        otp_validity: expiryMinutes.toString()
      } as OTPEmailData
    })

    const forgotPasswordRequest = await prisma.forgotPasswordRequest.create({
      data: {
        userId: user.id,
        createdAt: new Date(),
        token: await bcrypt.hash(otp, 10),
        expiresAt: dayjs().add(expiryMinutes
          , 'minutes').toDate(),
        fulfilled: false,
      },
    });

    response.result = forgotPasswordRequest.id;
    // --- end send_forgot_password_otp_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start send_forgot_password_otp_error code ---

    // --- end send_forgot_password_otp_error code ---
  }
  res.status(response.code).send(response)
}


const validateForgotPasswordOtp = async (req: Request, res: Response) => {
  const response: BackendResponse<boolean> = {
    code: 200,
  };
  const requestId = req.body["requestId"] as string;
  const token = req.body["token"] as string;
  try {
    // --- start validate_forgot_password_otp_logic code ---
    const forgotPasswordRequest = await prisma.forgotPasswordRequest.findFirst({
      where: {
        id: requestId,
        fulfilled: false,
      },
    });

    if (!forgotPasswordRequest) {
      response.code = 404;
      response.error = "Invalid request";
      return res.send(response);
    }

    if (forgotPasswordRequest.fulfilled) {
      response.code = 404;
      response.error = "Request already fulfilled";
      return res.send(response);
    }

    if (forgotPasswordRequest.expiresAt < new Date()) {
      response.code = 404;
      response.error = "Token expired";
      return res.send(response);
    }

    const isValid = await bcrypt.compare(token, forgotPasswordRequest.token);
    if (!isValid) {
      response.code = 404;
      response.error = "Invalid token";
      return res.send(response);
    }

    response.result = true;
    // --- end validate_forgot_password_otp_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start validate_forgot_password_otp_error code ---

    // --- end validate_forgot_password_otp_error code ---
  }
  res.status(response.code).send(response)
}


const changePasswordWithOtp = async (req: Request, res: Response) => {
  const response: BackendResponse<boolean> = {
    code: 200,
  };
  const requestId = req.body["requestId"] as string;
  const token = req.body["token"] as string;
  const newPassword = req.body["newPassword"] as string;
  try {
    // --- start change_password_with_otp_logic code ---
    const forgotPasswordRequest = await prisma.forgotPasswordRequest.findFirst({
      where: {
        id: requestId,
        fulfilled: false,
      },
    });

    if (!forgotPasswordRequest) {
      response.code = 404;
      response.error = "Invalid request";
      return res.send(response);
    }

    if (forgotPasswordRequest.fulfilled) {
      response.code = 404;
      response.error = "Request already fulfilled";
      return res.send(response);
    }

    if (forgotPasswordRequest.expiresAt < new Date()) {
      response.code = 404;
      response.error = "Token expired";
      return res.send(response);
    }

    const isValid = await bcrypt.compare(token, forgotPasswordRequest.token);
    if (!isValid) {
      response.code = 404;
      response.error = "Invalid token";
      return res.send(response);
    }
    const authUser = await prisma.authUser.findFirst({
      where: {
        id: forgotPasswordRequest.userId,
      },
    })

    if (!authUser) {
      response.code = 404;
      response.error = "User not found";
      return res.send(response);
    }

    const pwWithExistingHash = await bcrypt.hash(newPassword, authUser!.salt);

    if (pwWithExistingHash === authUser.passwordHash) {
      response.code = 404;
      response.error = "New password cannot be the same as the old password";
      return res.send(response);
    }

    const salt = await bcrypt.genSalt(10);
    const newHash = await bcrypt.hash(newPassword, salt);

    await prisma.authUser.update({
      where: {
        id: forgotPasswordRequest.userId,
      },
      data: {
        passwordHash: newHash,
        salt: salt,
      },
    });


    await prisma.forgotPasswordRequest.update({
      where: {
        id: requestId,
      },
      data: {
        fulfilled: true,
      },
    });

    response.result = true;

    // --- end change_password_with_otp_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start change_password_with_otp_error code ---

    // --- end change_password_with_otp_error code ---
  }
  res.status(response.code).send(response)
}


const refreshToken = async (req: Request, res: Response) => {
  const response: BackendResponse<AuthToken> = {
    code: 200,
  };
  const refreshToken = req.body["refreshToken"] as string;
  try {
    // --- start refresh_token_logic code ---
    const userSession = await prisma.userSession.findFirst({
      where: {
        refreshToken: refreshToken,
      },
    });
    if (!userSession) {
      response.code = 404;
      response.error = "Invalid refresh token";
      return res.send(response);
    }

    if (new Date(userSession.expiresAt) < new Date()) {
      response.code = 404;
      response.error = "Refresh token expired, try logging in again";
      return res.send(response);
    }

    const authUser = await prisma.authUser.findFirst({
      where: {
        id: userSession.userId,
      },
    });

    if (!authUser) {
      response.code = 404;
      response.error = "User not found";
      return res.send(response);
    }

    const payload = verify(refreshToken, process.env.JWT_SECRET!) as {
      userId: string;
      userType: UserType;
    };

    const expiresAt = new Date(Date.now() + 8 * 60 * 60 * 1000);
    const newAccessToken = sign(payload, process.env.JWT_SECRET!, {
      expiresIn: "8h",
    });

    const newRefreshToken = sign(payload, process.env.JWT_SECRET!, {
      expiresIn: "30d",
    });

    await prisma.userSession.update({
      where: {
        id: userSession.id,
      },
      data: {
        ipAddress: req.socket.remoteAddress ?? undefined,
        refreshToken: newRefreshToken,
        expiresAt: expiresAt,
      },
    });

    response.result = {
      accessToken: newAccessToken,
      refreshToken: newRefreshToken,
      expiresAt: new Date(Date.now() + 8 * 60 * 60 * 1000),
    };
    // --- end refresh_token_logic code ---
  } catch (e) {
    response.code = 500;
    response.error = JSON.stringify(e)
    // --- start refresh_token_error code ---

    // --- end refresh_token_error code ---
  }
  res.status(response.code).send(response)
}

export default {
  login,
  changePassword,
  me,
  updateMe,
  sendForgotPasswordOtp,
  validateForgotPasswordOtp,
  changePasswordWithOtp,
  refreshToken,
}
