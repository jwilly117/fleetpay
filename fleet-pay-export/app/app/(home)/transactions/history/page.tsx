import {
  Card,
  Table,
  TableBody,
  TableHead,
  TableHeadCell,
} from "flowbite-react";
import { cache } from "react";
import { getCompanyTransactions, me } from "../../../../src/services/backend";
import TransactionItem from "../transaction-item";
import { CustomPagination } from "./pagination";

export default async function TransactionHistoryPage({
  searchParams,
}: {
  searchParams: any;
}) {
  const page = +(searchParams?.page ?? 1);

  const { result: user } = await cache(me)();

  let { result, error } = await getCompanyTransactions(
    user!.selectedCompanyId!,
    {
      page,
      size: 20,
    },
    {
      status: ["APPROVED", "COMPLETED", "DENIED", "FAILED"],
    }
  );

  if (error) {
    throw error;
  }

  const { transactions } = result!;

  return (
    <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
      <div className="col-span-full mb-4 xl:mb-2">
        <Card>
          <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
            Transaction History
          </h1>
          <p className="mt-2 text-gray-500">
            Access comprehensive records of all completed transactions.
          </p>
        </Card>
      </div>
      {transactions?.length == 0 ? (
        <div className="col-span-full h-fullflex flex-col items-center justify-center mb-4 xl:mb-2">
          <center>
            <p className=" text-gray-900 sm:text-2xl dark:text-white">
              No Transaction History!
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
                  <TableHeadCell>Transaction Date</TableHeadCell>
                  <TableHeadCell>Transaction Id</TableHeadCell>
                  <TableHeadCell>Company Name</TableHeadCell>
                  <TableHeadCell>Amount</TableHeadCell>
                  <TableHeadCell>Fee Amount</TableHeadCell>
                  <TableHeadCell>Status</TableHeadCell>
                  <TableHeadCell>Action</TableHeadCell>
                </TableHead>
                <TableBody>
                  {transactions!.map((o) => (
                    <TransactionItem key={o.id} transaction={o} />
                  ))}
                </TableBody>
              </Table>
              <CustomPagination metadata={result!.metadata} />
            </Card>
          </div>
        </div>
      )}
    </div>
  );
}
