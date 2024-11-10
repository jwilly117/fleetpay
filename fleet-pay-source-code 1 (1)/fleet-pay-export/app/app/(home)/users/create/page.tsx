
"use client";





import {
  Button,
  Card,
  Label,
  Select,
  TextInput
} from "flowbite-react";
import { useRouter } from 'next/navigation';
import { useContext, useState } from "react";
import { CompanyContextData } from "../../../../contexts/company_context";
import { NewUser } from "../../../../src/models/new_user";
import { Role } from "../../../../src/models/role";
import { addCompanyUser } from "../../../../src/services/backend";


const roles: Role[] = [
  "ADMIN",
  "FINANCE",
  "HR",
  "MANAGER",
  "VIEWER"
]

export default function CreateUserPage() {
  const { selectedCompany } = useContext(CompanyContextData);
  const { replace } = useRouter()
  const [error, setError] = useState("")
  const [isLoading, setIsLoading] = useState(false)
  const [user, setUser] = useState<NewUser>({
    email: "",
    phoneNumber: "",
    name: "",
    username: ""
  })
  const [role, setRole] = useState<Role>("VIEWER")

  const handleSubmit = async (e: any) => {
    e.preventDefault();
    setIsLoading(true);
    setError("")
    await addCompanyUser(selectedCompany!.companyId, role, user)
      .then((resp) => {
        if (resp.error) {
          setError(resp.error)
          return
        }
        replace('/users')
      })
      .catch(err => {
        setError(err.message);
      });
    setIsLoading(false);
  }

  return (
    <>
      <div className="grid grid-cols-1 w-full px-4 pt-6 xl:grid-cols-2 xl:gap-4 dark:bg-gray-900">
        <div className="col-span-full mb-4 xl:mb-2">
          <Card>
            <h1 className="text-xl font-semibold text-gray-900 sm:text-2xl dark:text-white">
              Create Users
            </h1>
            <p className="mt-2 text-gray-500">Invite a new member to join the platform. Enter their details, assign a role, and an invitation will be sent to their email.
              They’ll receive instructions on how to set up their account and get started.</p>
          </Card>
        </div>
        <div className="col-span-2">
          <div className="grid grid-cols-1 gap-y-4 mb-6">
            <form onSubmit={handleSubmit}>
              <Card>
                <UserInformationCard user={user} setUser={setUser} role={role} setRole={setRole} />
                <div className="my-14" />
                {error && <p className="text-red-500"> {error}</p>}
                <div className="col-span-6 mt-8 w-full">
                  <Button color="blue" type="submit" isProcessing={isLoading} >Save</Button>
                </div>
              </Card>
            </form>
          </div>
        </div>
      </div>
    </>
  );
};


const UserInformationCard = ({ user, setUser, role, setRole }: { user: NewUser, setUser: React.Dispatch<React.SetStateAction<NewUser>>, role: Role, setRole: React.Dispatch<React.SetStateAction<Role>> }) => {
  return (
    <div>
      <h4 className="mb-4 text-xl font-bold dark:text-white">
        User Information
      </h4>
      <hr className="my-6" />
      <div className="grid grid-cols-6 gap-6">
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="user-name">Full Name</Label>
          <TextInput
            id="full-name"
            name="full-name"
            placeholder="Enter full name"
            onChange={(e) => {
              setUser({
                ...user,
                name: e.target.value
              })
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="email-address">Email Address</Label>
          <TextInput
            id="email-address"
            name="email-address"
            type="email"
            placeholder="Enter email address"
            onChange={(e) => {
              setUser({
                ...user,
                email: e.target.value,
                username: e.target.value
              })
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="phone-number">Phone Number</Label>
          <TextInput
            id="phone-number"
            name="phone-number"
            placeholder="Enter phone number"
            type="number"
            onChange={(e) => {
              setUser({
                ...user,
                phoneNumber: e.target.value
              })
            }}
            required
          />
        </div>
        <div className="col-span-6 grid grid-cols-1 gap-y-2 sm:col-span-3">
          <Label htmlFor="user-role">User Role</Label>
          <Select id="user-role"
            required
            value={role}
            onChange={(e) => {
              setRole(e.target.value as Role)
            }}
          >
            {roles.map((role) => {
              return <option
                onSelect={() => {
                  console.log(role)
                  setRole(role)
                }}
                key={role}>
                {role}
              </option>
            })}
          </Select>
        </div>

      </div>
    </div>
  );
}





