import { Card } from "flowbite-react";
import { Badge } from "flowbite-react/components/Badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeadCell,
  TableRow,
} from "flowbite-react/components/Table";
import { cache } from "react";
import { getCompanyUsers, me } from "../../../../src/services/backend";

export default async function UserManagePage() {
  const { result: user } = await cache(me)();

  const { result: companyUsers, error } = await getCompanyUsers(
    user!.selectedCompanyId!
  );

  if (error) {
    return <div>Error occured</div>;
  }
  return (
    <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
      <div className="col-span-full mb-4 xl:mb-2">
        <Card>
          <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
            User Management
          </h1>
          <p className="mt-2 text-gray-500">
            Manage access and roles for users within your company. Add new
            users, assign roles, send password reset links, and remove access
            when necessary.
          </p>
        </Card>
      </div>

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
                <TableHeadCell>User Name</TableHeadCell>
                <TableHeadCell>Email Address</TableHeadCell>
                <TableHeadCell>Role</TableHeadCell>
                <TableHeadCell>Status</TableHeadCell>
              </TableHead>
              <TableBody>
                {companyUsers!.map((user) => (
                  <TableRow key={`${user.id}`}>
                    <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-900 dark:text-white">
                      {user.user?.name}
                    </TableCell>
                    <TableCell className="whitespace-nowrap p-4 text-sm font-normal text-gray-500 dark:text-gray-400">
                      {user.user?.email}
                    </TableCell>
                    <TableCell className="whitespace-nowrap p-4 text-sm font-semibold text-gray-500 dark:text-white">
                      {user.role ?? "-"}
                    </TableCell>
                    <TableCell className="flex whitespace-nowrap p-4">
                      <Badge
                        className="rounded-md font-medium cursor-pointer text-md"
                        color={"success"}
                      >
                        {user.status}
                      </Badge>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </Card>
        </div>
      </div>
    </div>
  );
}
