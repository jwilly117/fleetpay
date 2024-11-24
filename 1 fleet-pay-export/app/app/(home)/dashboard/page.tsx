'use client'
import { useContext } from 'react';
import { CompanyContextData } from '../../../contexts/company_context';
import { AuthContext } from '../../../contexts/auth_context';

export default function Dashboard() {
  const { user } = useContext(AuthContext)!;
  const { selectedCompany } = useContext(CompanyContextData);
  return (
    <div>
      <span> Hello this is my dashboard. My email is {user.email} and my selected company is {selectedCompany?.company?.name} with id {selectedCompany?.company?.id} </span>
    </div>

  )
}
