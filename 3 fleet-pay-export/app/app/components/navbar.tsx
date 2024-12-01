"use client";

import { deleteCookie } from "cookies-next";
import {
  Avatar,
  DarkThemeToggle,
  Dropdown,
  Navbar,
  Tooltip,
} from "flowbite-react";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useContext } from "react";
import { HiMenuAlt1, HiX } from "react-icons/hi";
import { useSidebarContext } from "../../contexts/sidebar_context";
import { useMediaQuery } from "../../hooks/use-media-query";
import { AuthContext } from "../../contexts/auth_context";
import { LoadingContext } from "../../contexts/loading_context";

export function DashboardNavbar() {
  const sidebar = useSidebarContext();
  const isDesktop = useMediaQuery("(min-width: 1024px)");

  const { loading } = useContext(LoadingContext);
  function handleToggleSidebar() {
    if (isDesktop) {
      sidebar.desktop.toggle();
    } else {
      sidebar.mobile.toggle();
    }
  }

  return (
    <Navbar
      fluid
      className="fixed top-0 z-30 w-full border-b border-gray-200 bg-white p-0 sm:p-0 dark:border-gray-700 dark:bg-gray-800"
    >
      <div className="w-full p-3 pr-4">
        <div className="flex items-center justify-between">
          <div className="flex items-center">
            <button
              onClick={handleToggleSidebar}
              className="mr-3 cursor-pointer rounded p-2 text-gray-600 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white"
            >
              <span className="sr-only">Toggle sidebar</span>
              {/* mobile */}
              <div className="lg:hidden">
                {sidebar.mobile.isOpen ? (
                  <HiX className="h-6 w-6" />
                ) : (
                  <HiMenuAlt1 className="h-6 w-6" />
                )}
              </div>
              {/* desktop */}
              <div className="hidden lg:block">
                <HiMenuAlt1 className="h-6 w-6" />
              </div>
            </button>
            <Navbar.Brand as={Link} href="/" className="mr-14">
              <Image
                className="mr-3 h-8 hidden dark:block"
                alt=""
                src="/fleetpay_dark.png"
                width={180}
                height={16.2}
              />
              <Image
                className="mr-3 h-8 dark:hidden"
                alt=""
                src="/fleetpay_light.png"
                width={180}
                height={16.2}
              />
            </Navbar.Brand>
          </div>
          <div className="flex items-center lg:gap-3">
            <div className="flex items-center">
              <div className="hidden dark:block">
                <Tooltip content="Toggle light mode">
                  <DarkThemeToggle />
                </Tooltip>
              </div>
              <div className="dark:hidden">
                <Tooltip content="Toggle dark mode">
                  <DarkThemeToggle />
                </Tooltip>
              </div>
              <div className="ml-3 flex items-center">
                <UserDropdown />
              </div>
            </div>
          </div>
        </div>
      </div>
      {loading && (
        <div className="w-full">
          <div className="h-1.5 w-full bg-primary-100 overflow-hidden">
            <div className="progress w-full h-full bg-primary left-right"></div>
          </div>
        </div>
      )}
    </Navbar>
  );
}

function UserDropdown() {
  const { user, setUser } = useContext(AuthContext)!;
  const { replace } = useRouter();

  function logOut() {
    deleteCookie("authUser");
    setUser(null);
    // redirect("/login");
  }

  if (!user) {
    return <div />;
  }
  return (
    <Dropdown
      className="rounded"
      arrowIcon={false}
      inline
      label={
        <span>
          <span className="sr-only">User menu</span>
          <Avatar alt="" img={user.profilePicture ?? ""} rounded size="sm" />
        </span>
      }
    >
      <Dropdown.Header className="px-4 py-3">
        <span className="block text-sm">{user.name}</span>
        <span className="block truncate text-sm font-medium">{user.email}</span>
      </Dropdown.Header>
      <Dropdown.Item
        onClick={() => {
          replace("/profile");
        }}
      >
        My Profile
      </Dropdown.Item>
      <Dropdown.Item onClick={logOut}>Sign out</Dropdown.Item>
    </Dropdown>
  );
}
