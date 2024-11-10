"use client";
import { Button, Card, Label, TextInput } from "flowbite-react";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { FaEye, FaEyeSlash } from "react-icons/fa";
import { changePassword } from "../../src/services/backend";
import CustomToastMessage, {
  ToastMessage,
  ToastType,
} from "../components/toast";

interface UserPassword {
  oldPassword: string;
  newPassword: string;
  confirmPassword: string;
}

export default function ChangePassword() {
  const [showCurrentPassword, setCurrentPassword] = useState(false);
  const [showNewPassword, setShowNewPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [changePasswordLoading, setChangePasswordLoading] = useState(false);
  const [userPassword, setUserPassword] = useState<UserPassword>({
    oldPassword: "",
    newPassword: "",
    confirmPassword: "",
  });
  const [toast, setToast] = useState<ToastMessage | null>();

  const router = useRouter();

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

        router.push("/transactions/pending");
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
      <form onSubmit={handlePasswordSubmit}>
        <div className="h-screen w-screen flex items-center justify-center">
          <Card className="flex flex-col justify-center items-center p-6 w-full h-full">
            <h4 className="mb-2 text-xl font-bold dark:text-white">
              Secure Your Account
            </h4>
            <p className="mt-2 text-gray-500">
              {
                "To enhance the security of your account, please update your password before logging in."
              }
            </p>
            <hr className="my-6" />

            <div className="grid grid-cols-2 gap-6">
              <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
                <Label htmlFor="current-password">Current Password</Label>
                <TextInput
                  id="current-password"
                  name="current-password"
                  required
                  type={showCurrentPassword ? "text" : "password"}
                  value={userPassword?.oldPassword}
                  onChange={(e) => {
                    setUserPassword({
                      ...userPassword,
                      oldPassword: e.target.value,
                    });
                  }}
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
                  required
                  value={userPassword?.newPassword}
                  onChange={(e) => {
                    setUserPassword({
                      ...userPassword,
                      newPassword: e.target.value,
                    });
                  }}
                  type={showNewPassword ? "text" : "password"}
                  rightIcon={() =>
                    showNewPassword ? (
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
                  required
                  value={userPassword?.confirmPassword}
                  onChange={(e) => {
                    setUserPassword({
                      ...userPassword,
                      confirmPassword: e.target.value,
                    });
                  }}
                  type={showConfirmPassword ? "text" : "password"}
                  rightIcon={() =>
                    showConfirmPassword ? (
                      <FaEye
                        onClick={() =>
                          setShowConfirmPassword(!showConfirmPassword)
                        }
                        className="cursor-pointer"
                      />
                    ) : (
                      <FaEyeSlash
                        onClick={() =>
                          setShowConfirmPassword(!showConfirmPassword)
                        }
                        className="cursor-pointer"
                      />
                    )
                  }
                />
              </div>
            </div>
            <div className="col-span-6 mt-8 w-full">
              <Button
                color="blue"
                type="submit"
                isProcessing={changePasswordLoading}
              >
                Change
              </Button>
            </div>
          </Card>
        </div>
      </form>
      <CustomToastMessage toast={toast} />
    </>
  );
}
