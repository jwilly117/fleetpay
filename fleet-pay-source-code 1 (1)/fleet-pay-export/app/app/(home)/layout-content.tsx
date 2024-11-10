"use client";
import { redirect } from "next/navigation";
import { useContext, type PropsWithChildren } from "react";
import { twMerge } from "tailwind-merge";
import { useSidebarContext } from "../../contexts/sidebar_context";
import { AuthContext } from "../../contexts/auth_context";

export function LayoutContent({ children }: PropsWithChildren) {
  const sidebar = useSidebarContext();
  const { user } = useContext(AuthContext)!;
  if (!user) {
    redirect('/login')
  }
  return (
    <div
      id="main-content"
      className={twMerge(
        "relative h-full w-full overflow-y-auto bg-gray-50 dark:bg-gray-900",
        sidebar.desktop.isCollapsed ? "lg:ml-16" : "lg:ml-64",
      )}
    >
      {children}
    </div>
  );
}
