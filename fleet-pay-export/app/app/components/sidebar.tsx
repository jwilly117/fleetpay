"use client";

import { Dropdown, DropdownItem, Sidebar } from "flowbite-react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import type { ComponentProps, FC, HTMLAttributeAnchorTarget } from "react";
import { useContext, useEffect, useState } from "react";
import { AiOutlineTransaction } from "react-icons/ai";
import { HiSupport, HiUsers } from "react-icons/hi";
import { IoBusiness, IoSettingsSharp } from "react-icons/io5";
import { twMerge } from "tailwind-merge";
import { useSidebarContext } from "../../contexts/sidebar_context";
import { CompanyContextData } from "../../contexts/company_context";

interface SidebarItem {
  href?: string;
  target?: HTMLAttributeAnchorTarget;
  icon?: FC<ComponentProps<"svg">>;
  label: string;
  items?: SidebarItem[];
  badge?: string;
}

interface SidebarItemProps extends SidebarItem {
  pathname: string;
}

export function DashboardSidebar() {
  return (
    <>
      <div className="lg:hidden">
        <MobileSidebar />
      </div>
      <div className="hidden lg:block">
        <DesktopSidebar />
      </div>
    </>
  );
}

function DesktopSidebar() {
  const pathname = usePathname();
  const { isCollapsed, setCollapsed } = useSidebarContext().desktop;
  const [isPreview, setIsPreview] = useState(isCollapsed);

  useEffect(() => {
    if (isCollapsed) setIsPreview(false);
  }, [isCollapsed]);

  const preview = {
    enable() {
      if (!isCollapsed) return;

      setIsPreview(true);
      setCollapsed(false);
    },
    disable() {
      if (!isPreview) return;

      setCollapsed(true);
    },
  };

  return (
    <Sidebar
      onMouseEnter={preview.enable}
      onMouseLeave={preview.disable}
      aria-label="Sidebar with multi-level dropdown example"
      collapsed={isCollapsed}
      className={twMerge(
        "fixed inset-y-0 left-0 z-20 flex h-full shrink-0 flex-col border-r border-gray-200 pt-16 duration-75 lg:flex dark:border-gray-700",
        isCollapsed && "hidden w-16"
      )}
      id="sidebar"
    >
      <div className="flex h-full flex-col justify-between">
        <div className="py-2">
          <Sidebar.Items>
            <Sidebar.ItemGroup className="mt-0 border-t-0 pb-1 pt-0">
              {pages.map((item) => (
                <SidebarItem key={item.label} {...item} pathname={pathname} />
              ))}
            </Sidebar.ItemGroup>
            <Sidebar.ItemGroup className="mt-2 pt-2">
              {externalPages.map((item) => (
                <SidebarItem key={item.label} {...item} pathname={pathname} />
              ))}
            </Sidebar.ItemGroup>
          </Sidebar.Items>
        </div>
        <BottomSideBar />
      </div>
    </Sidebar>
  );
}

function MobileSidebar() {
  const pathname = usePathname();
  const { isOpen, close } = useSidebarContext().mobile;

  if (!isOpen) return null;

  return (
    <>
      <Sidebar
        aria-label="Sidebar with multi-level dropdown example"
        className={twMerge(
          "fixed inset-y-0 left-0 z-20 hidden h-full shrink-0 flex-col border-r border-gray-200 pt-16 lg:flex dark:border-gray-700",
          isOpen && "flex"
        )}
        id="sidebar"
      >
        <div className="flex h-full flex-col justify-between">
          <div className="py-2">
            <Sidebar.Items>
              <Sidebar.ItemGroup className="mt-0 border-t-0 pb-1 pt-0">
                {pages.map((item) => (
                  <SidebarItem key={item.label} {...item} pathname={pathname} />
                ))}
              </Sidebar.ItemGroup>
              <Sidebar.ItemGroup className="mt-2 pt-2">
                {externalPages.map((item) => (
                  <SidebarItem key={item.label} {...item} pathname={pathname} />
                ))}
              </Sidebar.ItemGroup>
            </Sidebar.Items>
          </div>
        </div>
      </Sidebar>
      <div
        onClick={close}
        aria-hidden="true"
        className="fixed inset-0 z-10 h-full w-full bg-gray-900/50 pt-16 dark:bg-gray-900/90"
      />
    </>
  );
}

function SidebarItem({
  href,
  target,
  icon,
  label,
  items,
  badge,
  pathname,
}: SidebarItemProps) {
  if (items) {
    const isOpen = items.some((item) => pathname.startsWith(item.href ?? ""));

    return (
      <Sidebar.Collapse
        icon={icon}
        label={label}
        open={isOpen}
        theme={{ list: "space-y-2 py-2  [&>li>div]:w-full" }}
      >
        {items.map((item) => (
          <Sidebar.Item
            key={item.label}
            as={Link}
            href={item.href}
            target={item.target}
            className={twMerge(
              "justify-center [&>*]:font-normal",
              pathname === item.href && "bg-gray-100 dark:bg-gray-700"
            )}
          >
            {item.label}
          </Sidebar.Item>
        ))}
      </Sidebar.Collapse>
    );
  }

  return (
    <Sidebar.Item
      as={Link}
      href={href}
      target={target}
      icon={icon}
      label={badge}
      className={twMerge(pathname === href && "bg-gray-100 dark:bg-gray-700")}
    >
      {label}
    </Sidebar.Item>
  );
}

const pages: SidebarItem[] = [
  {
    icon: AiOutlineTransaction,
    label: "Transactions",
    items: [
      { href: "/transactions/pending", label: "Pending Transactions" },
      { href: "/transactions/history", label: "Transaction History" },
    ],
  },
  {
    icon: IoBusiness,
    label: "Companies",
    items: [
      { href: "/companies/create", label: "Create Company" },
      { href: "/companies/manage", label: "Manage Companies" },
    ],
  },
  {
    icon: IoSettingsSharp,
    label: "Settings",
    items: [
      { href: "/settings", label: "My Company Settings" },
      { href: "/settings/integrations", label: "Integrations" },
    ],
  },
  {
    icon: HiUsers,
    label: "Users",
    items: [
      { href: "/users/create", label: "Create User" },
      { href: "/users/manage", label: "Manage Users" },
    ],
  },
];

const externalPages: SidebarItem[] = [
  {
    href: "",
    target: "_blank",
    icon: HiSupport,
    label: "Help & Support",
  },
];

const BottomSideBar = () => {
  const { allCompanies, selectedCompany, selectCompany } =
    useContext(CompanyContextData);

  const filteredCompanies = allCompanies?.filter(
    (company) => company?.company?.id !== selectedCompany?.company?.id
  );

  return (
    <div className="absolute bottom-0 left-0 justify-center p-4 w-full bg-white dark:bg-gray-800 z-20">
      <div className="pl-2 space-y-2 border-b border-gray-200 dark:border-gray-700" />

      {filteredCompanies?.length != 0 ? (
        <Dropdown
          inline
          arrowIcon={false}
          className="w-full"
          label={
            <div className="w-full">
              <div className="flex flex-row justify-between items-center p-2 my-4 w-full rounded-lg hover:bg-gray-100 dark:bg-gray-800 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700">
                <div className="flex flex-1 items-center">
                  <div className="text-left">
                    <div className="font-semibold leading-none text-gray-900 dark:text-white mb-0.5">
                      {selectedCompany?.company?.name}
                    </div>
                    <div className="text-sm text-gray-500 dark:text-gray-400">
                      {selectedCompany?.role}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          }
        >
          {filteredCompanies?.map((company) => (
            <DropdownItem
              key={company.companyId}
              onClick={() => {
                selectCompany!(company);
              }}
            >
              <div className="flex items-center p-2 rounded w-full hover:bg-gray-100 dark:hover:bg-gray-700">
                <div className="text-left w-full">
                  <div className="font-semibold leading-none text-gray-900 dark:text-white mb-0.5">
                    {company.company?.name}
                  </div>
                  <div className="text-sm text-gray-500 dark:text-gray-400">
                    {company.role}
                  </div>
                </div>
              </div>
            </DropdownItem>
          ))}
        </Dropdown>
      ) : (
        <div className="w-full">
          <div className="flex flex-row justify-between items-center p-2 my-4 w-full rounded-lg hover:bg-gray-100 dark:bg-gray-800 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700">
            <div className="flex flex-1 items-center">
              <div className="text-left">
                <div className="font-semibold leading-none text-gray-900 dark:text-white mb-0.5">
                  {selectedCompany?.company?.name}
                </div>
                <div className="text-sm text-gray-500 dark:text-gray-400">
                  {selectedCompany?.role}
                </div>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
