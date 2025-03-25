"use client";
import { Button, Card, Checkbox, Label, TextInput } from "flowbite-react";
import Image from "next/image";
import Link from "next/link";
import { cache, useContext, useEffect, useState } from "react";
import { AiOutlineLoading } from "react-icons/ai";
import { FaEye, FaEyeSlash } from "react-icons/fa";
import { AuthContext } from "../../contexts/auth_context";
import { login, me } from "../../src/services/backend";

export default function LoginForm() {
  const [email, setEmail] = useState<string | null>(null);
  const [password, setPassword] = useState<string | null>(null);
  const [isEmailValid, setIsEmailValid] = useState(false);
  const [isPasswordValid, setIsPasswordValid] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const [isLoading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const { setUser } = useContext(AuthContext)!;

  useEffect(() => {
    // reg exp to validate email
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (email) {
      setIsEmailValid(emailRegex.test(email));
    } else {
      setIsEmailValid(false);
    }
    setError("");
  }, [email]);

  useEffect(() => {
    if (password) {
      setIsPasswordValid(password.length >= 6);
    } else {
      setIsPasswordValid(false);
    }
    setError("");
  }, [password]);

  useEffect(() => {
    if (!isEmailValid) {
      setPassword(null);
    }
  }, [isEmailValid]);

  async function handleSumbit(e: any) {
    e.preventDefault();
    setLoading(true);
    const response = await login(email!, password!, "ADMIN");
    if (response.error) {
      setError(response.error);
      setLoading(false);
    } else {
      const userResp = await cache(me)();
      setUser(userResp.result!);
    }
  }

  return (
    <>
      <div className="mx-auto flex flex-col items-center justify-center px-6 pt-8 md:h-screen">
        <Image
          alt=""
          src="/fleetpay_light.png"
          width={300}
          height={300}
          className="dark:hidden"
        />
        <Image
          alt=""
          src="/fleetpay_dark.png"
          width={300}
          className="hidden dark:block"
          height={300}
        />

        <Card
          horizontal
          imgAlt=""
          className="w-full md:max-w-screen-sm"
          theme={{
            root: {
              children: "my-auto w-full gap-0 space-y-8 p-6 sm:p-8 lg:p-16",
            },
          }}
        >
          <h2 className="text-2xl font-bold text-gray-900 lg:text-3xl dark:text-white">
            Welcome Back
          </h2>
          <form className="mt-8 space-y-6" onSubmit={handleSumbit}>
            <div className="flex flex-col gap-y-2">
              <TextInput
                id="email"
                name="email"
                color={error ? "failure" : isEmailValid ? "success" : undefined}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="Email address"
                type="email"
              />
            </div>
            <div className="flex flex-col gap-y-2">
              <TextInput
                id="password"
                name="password"
                placeholder="Password"
                color={
                  error ? "failure" : isPasswordValid ? "success" : undefined
                }
                onChange={(e) => setPassword(e.target.value)}
                rightIcon={() =>
                  showPassword ? (
                    <FaEye
                      onClick={() => setShowPassword(!showPassword)}
                      className="cursor-pointer"
                    />
                  ) : (
                    <FaEyeSlash
                      onClick={() => setShowPassword(!showPassword)}
                      className="cursor-pointer"
                    />
                  )
                }
                helperText={<> {error} </>}
                type={showPassword ? "text" : "password"}
              />
            </div>
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-x-3">
                <Checkbox id="rememberMe" name="rememberMe" />
                <Label htmlFor="rememberMe">Remember me</Label>
              </div>
              <Link
                href="#"
                className="text-right text-sm text-primary-700 hover:underline dark:text-primary-500"
              >
                Forgot Password?
              </Link>
            </div>
            <div className="mb-6">
              <Button
                size="md"
                color="primary"
                className="w-full primary"
                disabled={!isEmailValid || !isPasswordValid}
                type="submit"
                isProcessing={isLoading}
                processingSpinner={
                  <AiOutlineLoading className="h-6 w-6 animate-spin" />
                }
              >
                {isLoading ? "Logging in " : "Continue"}
              </Button>
            </div>
          </form>
        </Card>
      </div>
    </>
  );
}
