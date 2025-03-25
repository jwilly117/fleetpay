import { Card } from "flowbite-react";
import {
  Table,
  TableBody,
  TableHead,
  TableHeadCell,
} from "flowbite-react/components/Table";
import { cache } from "react";
import { getCompanyTransactions, me } from "../../../../src/services/backend";
import { CustomPagination } from "../history/pagination";
import TransactionItem from "../transaction-item";

export default async function TransactionsPendingPage({
  searchParams,
}: {
  searchParams: any;
}) {
  const { result: user } = await cache(me)();
  const page = +(searchParams?.page ?? 1);
  let { result, error } = await getCompanyTransactions(
    user!.selectedCompanyId!,
    {
      page,
      size: 20,
    },
    {
      status: ["PENDING"],
    }
  );

  if (error) {
    throw error;
  }
  const { transactions } = result!;

  return (
    <>
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              Pending Transactions
            </h1>
            <p className="mt-2 text-gray-500">
              Review and manage transactions awaiting approval.
            </p>
          </Card>
        </div>
        {transactions?.length == 0 ? (
          <div className="col-span-full h-fullflex flex-col items-center justify-center mb-4 xl:mb-2">
            <center>
              <p className=" text-gray-900 sm:text-2xl dark:text-white">
                No Pending Transactions!
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
                    <TableHeadCell>Action</TableHeadCell>
                  </TableHead>
                  <TableBody>
                    {transactions?.map((o: any) => (
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
    </>
  );
}
