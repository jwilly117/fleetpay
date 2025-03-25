"use client";
import { useRouter } from "next/navigation";
import { Dispatch, createContext, useContext, useState } from "react";
import { AuthContext } from "./auth_context";
import { LoadingContext } from "./loading_context";
import { CompanyAdmin } from "../src/models/company_admin";
import { changeSelectedCompany } from "../src/services/backend";

export const CompanyContextData = createContext<CompanyContextInterface>({});

export function CompanyContext({ children, companies }: any) {
  const { user } = useContext(AuthContext)!;
  const { setLoading } = useContext(LoadingContext);
  const { refresh } = useRouter();

  const [allCompanies] = useState<CompanyAdmin[]>(companies);
  const [selectedCompany, setSelectedCompany] = useState<CompanyAdmin>(
    companies.find(
      (c: CompanyAdmin) => c.companyId === user?.selectedCompanyId
    ) ?? companies[0]
  );
  function changeCompany(company: CompanyAdmin) {
    if (company.companyId !== selectedCompany.companyId) {
      setLoading!(true);
      changeSelectedCompany(company.companyId).then((_) => {
        setLoading!(false);
        setSelectedCompany(company);
        refresh();
      });
    }
  }
  return (
    <CompanyContextData.Provider
      value={{
        allCompanies: allCompanies,
        selectedCompany: selectedCompany,
        selectCompany: changeCompany,
      }}
    >
      {children}
    </CompanyContextData.Provider>
  );
}

interface CompanyContextInterface {
  allCompanies?: CompanyAdmin[];
  selectedCompany?: CompanyAdmin;
  selectCompany?: Dispatch<CompanyAdmin>;
}
