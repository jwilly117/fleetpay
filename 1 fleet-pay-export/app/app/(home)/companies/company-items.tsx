"use client";

import dayjs from "dayjs";
import { Button, TableCell, TableRow } from "flowbite-react";
import { useRouter } from "next/navigation";
import { Contractor } from "../../../src/models/contractor";

export default function CompanyItem({ company }: { company: Contractor }) {
  const { replace } = useRouter();

  return (
    <>
      <TableRow key={`${company.id}`}>
        <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-900 dark:text-white">
          {company.name ?? "-"}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-500 dark:text-gray-400">
          {company.primaryContact.name ?? "-"}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-500 dark:text-white">
          {company.fundingSetting.fundingLimitType == "FIXED_AMOUNT" ? "$" : ""}
          {company.fundingSetting.fundingLimit?.toString() ?? "-"}
          {company.fundingSetting.fundingLimitType == "PERCENTAGE" ? "%" : ""}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-900 dark:text-white">
          {company.fundingSetting.transactionFee + "%"}
        </TableCell>
        <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-900 dark:text-white">
          {company.lasPaymentRequestDate
            ? dayjs(company.lasPaymentRequestDate).toString()
            : "-"}
        </TableCell>
        <TableCell className="flex whitespace-nowrap p-4">
          <Button
            className="cursor-pointer"
            size={"xs"}
            color={"info"}
            onClick={() => {
              replace(`/companies/edit/${company.id}`);
            }}
          >
            Edit
          </Button>
        </TableCell>
      </TableRow>
    </>
  );
}
