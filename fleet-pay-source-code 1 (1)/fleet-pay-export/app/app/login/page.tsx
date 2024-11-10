"use client";
import { redirect } from "next/navigation";
import { useContext } from "react";
import { AuthContext } from "../../contexts/auth_context";
import LoginForm from "../components/login_form";

export default function LoginPage() {
  const { user } = useContext(AuthContext)!;
  if (user !== null && user?.status == "CHANGE_PASSWORD")
    return redirect("/change_password");
  if (user) return redirect("/transactions/pending");
  return <LoginForm />;
}
