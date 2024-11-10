import { ErrorBoundary } from "next/dist/client/components/error-boundary";
import { redirect } from "next/navigation";
import { cache, type PropsWithChildren } from "react";
import { SidebarProvider } from "../../contexts/sidebar_context";
import { sidebarCookie } from "../../lib/sidebar-cookie";
import { DashboardNavbar } from "../components/navbar";
import { DashboardSidebar } from "../components/sidebar";
import Error from "./error";
import { LayoutContent } from "./layout-content";
import { CompanyContext } from "../../contexts/company_context";
import { LoadingProvider } from "../../contexts/loading_context";
import { me, getCompaniesWithMyRole } from "../../src/services/backend";

export default async function DashboardLayout({ children }: PropsWithChildren) {
  const { result: user } = await cache(me)();

  if (!user) {
    redirect("/login");
  }

  const { result: companies } = await cache(getCompaniesWithMyRole)();
  return (
    <SidebarProvider initialCollapsed={sidebarCookie.get().isCollapsed}>
      <LoadingProvider>
        <CompanyContext companies={companies}>
          <DashboardNavbar />
          <div className="mt-16 flex items-start">
            <DashboardSidebar />
            <LayoutContent>
              <ErrorBoundary errorComponent={Error}>{children}</ErrorBoundary>
            </LayoutContent>
          </div>
        </CompanyContext>
      </LoadingProvider>
    </SidebarProvider>
  );
}
