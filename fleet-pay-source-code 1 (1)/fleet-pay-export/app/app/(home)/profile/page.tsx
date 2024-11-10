"use client";

import { Avatar, Button, Card, Label, TextInput } from "flowbite-react";
import { useContext, useEffect, useState } from "react";
import { FaEye, FaEyeSlash } from "react-icons/fa";
import { AuthContext } from "../../../contexts/auth_context";
import { User } from "../../../src/models/user";
import { changePassword, updateMe } from "../../../src/services/backend";
import CustomToastMessage, {
  ToastMessage,
  ToastType,
} from "../../components/toast";

interface UserPassword {
  oldPassword: string;
  newPassword: string;
  confirmPassword: string;
}

export default function ProfilePage() {
  const { user, setUser } = useContext(AuthContext)!;
  const [userPassword, setUserPassword] = useState<UserPassword>({
    oldPassword: "",
    newPassword: "",
    confirmPassword: "",
  });
  const [profileUpdateLoading, setProfileUpdateLoading] = useState(false);
  const [changePasswordLoading, setChangePasswordLoading] = useState(false);
  const [avatar, setAvatar] = useState("");
  const [toast, setToast] = useState<ToastMessage | null>();

  useEffect(() => {
    if (toast) {
      const timer = setTimeout(() => {
        setToast(null);
      }, toast.duration * 1000);

      return () => {
        clearTimeout(timer);
      };
    }
  }, [toast]);

  const handleProfileSubmit = async (e: any) => {
    e.preventDefault();
    setProfileUpdateLoading(true);
    var profilePicture;

    if (avatar) {
      profilePicture = avatar;
    }
    await updateMe({
      name: user.name,
      profilePicture: profilePicture,
      phoneNumber: user.phoneNumber,
    })
      .then((resp) => {
        if (resp.error) {
          setToast({
            message: resp.error,
            type: ToastType.ERROR,
            duration: 3,
          });
          setProfileUpdateLoading(false);
          return;
        }
        setToast({
          message: "Profile updated successfully",
          type: ToastType.SUCCESS,
          duration: 3,
        });
      })
      .catch((err) => {
        setToast({
          message: err,
          type: ToastType.ERROR,
          duration: 3,
        });
      });

    setProfileUpdateLoading(false);
  };

  const handlePasswordSubmit = async (e: any) => {
    e.preventDefault();
    setChangePasswordLoading(true);

    if (userPassword.newPassword !== userPassword.confirmPassword) {
      setToast({
        message: "Passwords do not match",
        type: ToastType.ERROR,
        duration: 3,
      });
      setChangePasswordLoading(false);
      setUserPassword({
        oldPassword: "",
        newPassword: "",
        confirmPassword: "",
      });
      return;
    }
    await changePassword(userPassword.oldPassword, userPassword.confirmPassword)
      .then((resp) => {
        if (resp.error) {
          setToast({
            message: resp.error,
            type: ToastType.ERROR,
            duration: 3,
          });
          setUserPassword({
            oldPassword: "",
            newPassword: "",
            confirmPassword: "",
          });
          return;
        }

        setToast({
          message: "Password changed successfully",
          type: ToastType.SUCCESS,
          duration: 3,
        });
        setUserPassword({
          oldPassword: "",
          newPassword: "",
          confirmPassword: "",
        });
      })

      .catch((err) => {
        console.log(err);
        setToast({
          message: err,
          type: ToastType.ERROR,
          duration: 3,
        });
      });
    setChangePasswordLoading(false);
  };

  return (
    <>
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              My Profile
            </h1>
            <p className="mt-2 text-gray-500">
              Manage your personal information, customize your notification
              preferences, and enhance your account security.
            </p>
          </Card>
        </div>
        <div className="col-span-2">
          <div className="grid grid-cols-1 gap-y-4 mb-6">
            <form onSubmit={handleProfileSubmit}>
              <Card>
                <ProfileInformationCard
                  user={user}
                  setUser={setUser}
                  avatar={avatar}
                  setAvatar={setAvatar}
                />

                {/* {error && <p className="text-red-500"> {error}</p>} */}
                <div className="col-span-6 mt-8 w-full">
                  <Button
                    color="blue"
                    type="submit"
                    isProcessing={profileUpdateLoading}
                  >
                    Save
                  </Button>
                </div>
              </Card>
              <div className="my-14" />
            </form>

            <form onSubmit={handlePasswordSubmit}>
              <Card>
                <ChangePasswordCard
                  userPassword={userPassword}
                  setUserPassword={setUserPassword}
                />

                {/* {error && <p className="text-red-500"> {error}</p>} */}
                <div className="col-span-6 mt-8 w-full">
                  <Button
                    color="blue"
                    type="submit"
                    isProcessing={changePasswordLoading}
                  >
                    Save
                  </Button>
                </div>
              </Card>
            </form>
          </div>
        </div>
      </div>
      <CustomToastMessage toast={toast} />
    </>
  );
}

const ProfileInformationCard = ({
  user,
  setUser,
  avatar,
  setAvatar,
}: {
  user: User;
  setUser: React.Dispatch<User | null>;
  avatar: string;
  setAvatar: React.Dispatch<string>;
}) => {
  const handleAvatarClick = async () => {
    const file = await new Promise<File | null>((resolve, reject) => {
      const input = document.createElement("input");
      input.type = "file";
      input.accept = "image/*";
      input.style.display = "none";

      input.onchange = (event) => {
        const target = event.target as HTMLInputElement;
        const file = target.files ? target.files[0] : null;
        if (file) {
          resolve(file);
        } else {
          reject(new Error("No file selected"));
        }
      };
      document.body.appendChild(input);
      input.click();
    });

    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => {
        if (e.target) {
          setAvatar(e.target.result as string);
        }
      };
      reader.readAsDataURL(file);
    }
  };
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Profile Information
      </h4>
      <p className="mt-2 text-gray-500">
        {
          "View and update your basic information. Keep your contact details current to ensure you never miss important communications."
        }
      </p>
      <hr className="my-6" />

      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="user-name">Full Name</Label>
          <TextInput
            id="full-name"
            name="full-name"
            value={user?.name}
            onChange={(e) => {
              setUser({
                ...user,
                name: e.target.value,
              });
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="email-address">Email Address</Label>
          <TextInput
            id="email-address"
            name="email-address"
            type="email"
            value={user?.email}
            disabled
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="phone-number">Phone Number</Label>
          <TextInput
            id="phone-number"
            name="phone-number"
            value={user?.phoneNumber ?? ""}
            pattern={"/^[+]?[(]?[0-9]{3}[)]?[-s.]?[0-9]{3}[-s.]?[0-9]{4,6}$/"}
            type="phone"
            onChange={(e) => {
              setUser({
                ...user,
                phoneNumber: e.target.value,
              });
            }}
          />
        </div>

        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Avatar
            className="cursor-pointer object-cover"
            img={avatar || user?.profilePicture || ""}
            rounded
            size={"lg"}
            onClick={handleAvatarClick}
          >
            <div className="space-y-1 font-medium dark:text-white">
              <div>Profile Picture</div>
            </div>
          </Avatar>
        </div>
      </div>
    </div>
  );
};

const ChangePasswordCard = ({
  userPassword,
  setUserPassword,
}: {
  userPassword: UserPassword;
  setUserPassword: React.Dispatch<UserPassword>;
}) => {
  const [showCurrentPassword, setCurrentPassword] = useState(false);
  const [showNewPassword, setShowNewPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        Change Password
      </h4>
      <p className="mt-2 text-gray-500">
        {
          "Regularly updating your password helps keep your account secure. Use a strong, unique password not used elsewhere."
        }
      </p>
      <hr className="my-6" />

      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="current-password">Current Password</Label>
          <TextInput
            id="current-password"
            name="current-password"
            value={userPassword?.oldPassword}
            required
            onChange={(e) => {
              setUserPassword({
                ...userPassword,
                oldPassword: e.target.value,
              });
            }}
            type={showCurrentPassword ? "text" : "password"}
            rightIcon={() =>
              showCurrentPassword ? (
                <FaEye
                  onClick={() => setCurrentPassword(!showCurrentPassword)}
                  className="cursor-pointer"
                />
              ) : (
                <FaEyeSlash
                  onClick={() => setCurrentPassword(!showCurrentPassword)}
                  className="cursor-pointer"
                />
              )
            }
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="new-password">New Password</Label>
          <TextInput
            id="new-password"
            name="new-password"
            value={userPassword?.newPassword}
            required
            type={showNewPassword ? "text" : "password"}
            onChange={(e) => {
              setUserPassword({
                ...userPassword,
                newPassword: e.target.value,
              });
            }}
            rightIcon={() =>
              showCurrentPassword ? (
                <FaEye
                  onClick={() => setShowNewPassword(!showNewPassword)}
                  className="cursor-pointer"
                />
              ) : (
                <FaEyeSlash
                  onClick={() => setShowNewPassword(!showNewPassword)}
                  className="cursor-pointer"
                />
              )
            }
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="confirmed-password">Confirm New Password</Label>
          <TextInput
            id="confirmed-password"
            name="confirmed-password"
            value={userPassword?.confirmPassword}
            required
            type={showConfirmPassword ? "text" : "password"}
            onChange={(e) => {
              setUserPassword({
                ...userPassword,
                confirmPassword: e.target.value,
              });
            }}
            rightIcon={() =>
              showCurrentPassword ? (
                <FaEye
                  onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                  className="cursor-pointer"
                />
              ) : (
                <FaEyeSlash
                  onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                  className="cursor-pointer"
                />
              )
            }
          />
        </div>
      </div>
    </div>
  );
};
