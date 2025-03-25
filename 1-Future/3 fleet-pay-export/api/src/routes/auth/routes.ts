import express from "express";
import { validate } from "express-validation";

import authValidators from "./validators";
import authControllers from "./controllers";

// --- start imports code ---
import { authenticateUser } from "./middleware";

// --- end imports code ---

const authRoutes = express.Router();

// --- start global_request_middlewares code ---

// --- end global_request_middlewares code ---

authRoutes.post(
  '/login',
  // --- start login_pre_validation_middlewares code ---

  // --- end login_pre_validation_middlewares code ---
  validate(authValidators.login, {}, { abortEarly: false }),
  // --- start login_middlewares code ---

  // --- end login_middlewares code ---
  authControllers.login,
);

authRoutes.post(
  '/changePassword',
  // --- start change_password_pre_validation_middlewares code ---

  // --- end change_password_pre_validation_middlewares code ---
  validate(authValidators.changePassword, {}, { abortEarly: false }),
  // --- start change_password_middlewares code ---
  authenticateUser,
  // --- end change_password_middlewares code ---
  authControllers.changePassword,
);

authRoutes.get(
  '/me',
  // --- start me_middlewares code ---
  authenticateUser,
  // --- end me_middlewares code ---
  authControllers.me,
);

authRoutes.patch(
  '/me',
  // --- start update_me_pre_validation_middlewares code ---

  // --- end update_me_pre_validation_middlewares code ---
  validate(authValidators.updateMe, {}, { abortEarly: false }),
  // --- start update_me_middlewares code ---
  authenticateUser,
  // --- end update_me_middlewares code ---
  authControllers.updateMe,
);

authRoutes.post(
  '/forgotPassword/sendOtp',
  // --- start send_forgot_password_otp_pre_validation_middlewares code ---
  
  // --- end send_forgot_password_otp_pre_validation_middlewares code ---
  validate(authValidators.sendForgotPasswordOtp, {}, { abortEarly: false }),
  // --- start send_forgot_password_otp_middlewares code ---
  
  // --- end send_forgot_password_otp_middlewares code ---
  authControllers.sendForgotPasswordOtp,
);

authRoutes.post(
  '/forgotPassword/validateOtp',
  // --- start validate_forgot_password_otp_pre_validation_middlewares code ---
  
  // --- end validate_forgot_password_otp_pre_validation_middlewares code ---
  validate(authValidators.validateForgotPasswordOtp, {}, { abortEarly: false }),
  // --- start validate_forgot_password_otp_middlewares code ---
  
  // --- end validate_forgot_password_otp_middlewares code ---
  authControllers.validateForgotPasswordOtp,
);

authRoutes.post(
  '/forgotPassword/changePassword',
  // --- start change_password_with_otp_pre_validation_middlewares code ---
  
  // --- end change_password_with_otp_pre_validation_middlewares code ---
  validate(authValidators.changePasswordWithOtp, {}, { abortEarly: false }),
  // --- start change_password_with_otp_middlewares code ---
  
  // --- end change_password_with_otp_middlewares code ---
  authControllers.changePasswordWithOtp,
);

authRoutes.post(
  '/refreshToken',
  // --- start refresh_token_pre_validation_middlewares code ---

  // --- end refresh_token_pre_validation_middlewares code ---
  validate(authValidators.refreshToken, {}, { abortEarly: false }),
  // --- start refresh_token_middlewares code ---

  // --- end refresh_token_middlewares code ---
  authControllers.refreshToken,
);

// --- start global_response_middlewares code ---

// --- end global_response_middlewares code ---

export default authRoutes;

