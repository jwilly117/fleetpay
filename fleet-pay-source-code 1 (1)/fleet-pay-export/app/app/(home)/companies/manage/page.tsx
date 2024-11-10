
import { Card } from "flowbite-react";
import {
  Table,
  TableBody,
  TableHead,
  TableHeadCell,
} from "flowbite-react/components/Table";
import { cache } from "react";
import CompanyItem from "../company-items";
import { getCompaniesWithMyRole, getCompanyContractors, me } from "../../../../src/services/backend";

export default async function ManageContractors() {
  const { result: user } = await cache(me)();
  const { result: companies } = await cache(getCompaniesWithMyRole)();
  const selectedCompany = companies?.find(
    (e) => e.companyId == user?.selectedCompanyId
  );
  const { result: contractors } = await cache(getCompanyContractors)(
    selectedCompany!.companyId
  );
  return (
    <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
      <div className="col-span-full mb-4 xl:mb-2">
        <Card>
          <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
            Manage Companies
          </h1>
          <p className="mt-2 text-gray-500">
            Overview and management of all companies registered with Fleet Pay.
          </p>
        </Card>
      </div>

      {contractors?.length == 0 ? (
        <div className="col-span-full h-fullflex flex-col items-center justify-center mb-4 xl:mb-2">
          <center>
            <p className=" text-gray-900 sm:text-2xl dark:text-white">
              No Company created!
            </p>
          </center>
        </div>
      ) : (
        <div className="col-span-2">
          <div className="grid grid-cols-1 gap-y-4 mb-6">
            <Card>
              <Table striped>
                <TableHead
                  className="bg-gray-50 dark:bg-gray-700"
                  theme={{
                    cell: {
                      base: "p-4 text-left text-xs font-medium uppercase tracking-wider text-gray-500 dark:text-gray-400",
                    },
                  }}
                >
                  <TableHeadCell>Company Name</TableHeadCell>
                  <TableHeadCell>Primary Contact</TableHeadCell>
                  <TableHeadCell>Funding Limit</TableHeadCell>
                  <TableHeadCell>Transaction Fee</TableHeadCell>
                  <TableHeadCell>Last Payment Req.Date</TableHeadCell>
                  <TableHeadCell>Action</TableHeadCell>
                </TableHead>

                <TableBody>
                  {contractors?.map((con) => (
                    <CompanyItem key={con.id} company={con} />
                  ))}
                </TableBody>
              </Table>
            </Card>
          </div>
        </div>
      )}
    </div>
  );
}
