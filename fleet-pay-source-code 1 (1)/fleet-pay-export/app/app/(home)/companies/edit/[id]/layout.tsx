import { getCompanyContractor } from "../../../../../src/services/backend";
import { ContractorProvider } from "../../../../../contexts/contractor_context";

export default async function DashboardLayout({
  children,
  params,
}: {
  children: JSX.Element;
  params: {
    id: string;
  };
}) {
  const { result: contractor } = await getCompanyContractor(params.id);

  return (
    <ContractorProvider contractor={contractor}>{children}</ContractorProvider>
  );
}
