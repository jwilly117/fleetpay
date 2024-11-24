"use client";

import { Button, Card } from "flowbite-react";
import { useRouter } from "next/navigation";
import { useContext, useState } from "react";
import { CompanyContextData } from "../../../../contexts/company_context";
import { NewContractorRequest } from "../../../../src/models/new_contractor_request";
import { addCompanyContractor } from "../../../../src/services/backend";
import {
  CompanyInformationCard,
  FundingLimitsFeeStructurePage,
  PaymentStructurePage,
  PrimaryContactInformationCard,
} from "../../../components/company_details";

export default function CreateCompanyPage() {
  const { selectedCompany } = useContext(CompanyContextData);
  const { replace } = useRouter();
  const [error, setError] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [contractor, setContractor] = useState<NewContractorRequest>({
    name: "",
    fundingSetting: {
      fundingLimit: 0,
      postageFee: 0,
      transactionFee: 0,
      fundingLimitType: "FIXED_AMOUNT",
      fundingAmount: 0,
    },
    emails: [],
    phoneNumbers: [],
    paymentStructure: {
      cycleStartDate: new Date(),
      cycleEndDate: null,
      paymentInterval: "WEEKLY",
    },
    user: {
      email: "",
      phoneNumber: "",
      name: "",
      username: "",
    },
  });

  const handleSubmit = async (e: any) => {
    e.preventDefault();
    setIsLoading(true);
    setError("");
    // if (validateMultipleEmails(contractor.emails)) {
    //   setError("Please enter a valid email address");
    //   return;
    // }

    await addCompanyContractor(selectedCompany!.companyId, contractor)
      .then((resp) => {
        if (resp.error) {
          setError(resp.error);
          return;
        }
        replace("/companies");
      })
      .catch((err) => {
        setError(err.message);
      });
    setIsLoading(false);
  };

  return (
    <>
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              Create Company
            </h1>
            <p className="mt-2 text-gray-500">
              Enter the details of the new company you wish to add to the
              system.
            </p>
          </Card>
        </div>

        <div className="col-span-2">
          <div className="grid grid-cols-1 gap-y-4 mb-6">
            <form onSubmit={handleSubmit}>
              <Card>
                <CompanyInformationCard
                  companyInfo={{
                    name: contractor.name,
                    emails: contractor.emails,
                    phoneNumbers: contractor.phoneNumbers,
                  }}
                  setCompanyInfo={(info) => {
                    setContractor({
                      ...contractor,
                      name: info.name,
                      emails: info.emails,
                      phoneNumbers: info.phoneNumbers,
                    });
                  }}
                  setError={setError}
                />
                <div className="my-14" />
                <PrimaryContactInformationCard
                  contractor={contractor}
                  setContractor={setContractor}
                />
                <div className="my-14" />
                <FundingLimitsFeeStructurePage
                  fundingSetting={contractor.fundingSetting}
                  setFundingSetting={(f) => {
                    setContractor({
                      ...contractor,
                      fundingSetting: f,
                    });
                  }}
                />
                <div className="my-14" />
                <PaymentStructurePage
                  payementStructure={contractor.paymentStructure}
                  setPayementStructure={(p) => {
                    setContractor({
                      ...contractor,
                      paymentStructure: p,
                    });
                  }}
                />
                <div className="my-14" />
                {error && <p className="text-red-500"> {error}</p>}
                <div className="col-span-6 mt-8 w-full">
                  <Button color="blue" type="submit" isProcessing={isLoading}>
                    Save
                  </Button>
                </div>
              </Card>
            </form>
          </div>
        </div>
      </div>
    </>
  );
}
