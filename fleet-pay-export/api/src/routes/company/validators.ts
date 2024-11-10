import { Joi } from "express-validation";

import { RoleValidator } from '../../validators/role.validator';
import { NewUserValidator } from '../../validators/new_user.validator';
import { CompanyUserValidator } from '../../validators/company_user.validator';
import { NewContractorRequestValidator } from '../../validators/new_contractor_request.validator';
import { ContractorValidator } from '../../validators/contractor.validator';
import { PageRequestValidator } from '../../validators/page_request.validator';
import { TransactionRequestFilterValidator } from '../../validators/transaction_request_filter.validator';
import { TransactionStatusValidator } from '../../validators/transaction_status.validator';
import { NewCompanyValidator } from '../../validators/new_company.validator';

// --- start declarations code ---

// --- end declarations code ---

const changeSelectedCompany = {
  body: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
  }),
}

const getCompanyUsers = {
  query: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
  }),
}

const addCompanyUser = {
  body: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
    role: RoleValidator()
      // --- start role_extra code ---

      // --- end role_extra code ---
      .required(),
    user: NewUserValidator()
      // --- start user_extra code ---

      // --- end user_extra code ---
      .required(),
  }),
}

const getCompanyUser = {
  params: Joi.object({
    adminId: Joi.string()
      // --- start admin_id_extra code ---

      // --- end admin_id_extra code ---
      .required(),
  }),
}

const updateCompanyUser = {
  params: Joi.object({
    adminId: Joi.string()
      // --- start admin_id_extra code ---

      // --- end admin_id_extra code ---
      .required(),
  }),
  body: Joi.object({
    admin: CompanyUserValidator()
      // --- start admin_extra code ---

      // --- end admin_extra code ---
      .required(),
  }),
}

const deleteCompanyUser = {
  params: Joi.object({
    adminId: Joi.string()
      // --- start admin_id_extra code ---

      // --- end admin_id_extra code ---
      .required(),
  }),
}

const getCompanyContractors = {
  query: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
  }),
}

const addCompanyContractor = {
  body: Joi.object({
    parentCompanyId: Joi.string()
      // --- start parent_company_id_extra code ---

      // --- end parent_company_id_extra code ---
      .required(),
    request: NewContractorRequestValidator()
      // --- start request_extra code ---

      // --- end request_extra code ---
      .required(),
  }),
}

const getCompanyContractor = {
  params: Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---

      // --- end contractor_id_extra code ---
      .required(),
  }),
}

const updateCompanyContractor = {
  params: Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---

      // --- end contractor_id_extra code ---
      .required(),
  }),
  body: Joi.object({
    contractor: ContractorValidator()
      // --- start contractor_extra code ---

      // --- end contractor_extra code ---
      .required(),
  }),
}

const deleteCompanyContractor = {
  params: Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---

      // --- end contractor_id_extra code ---
      .required(),
  }),
}

const getCompanyTransactions = {
  body: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
    pageDetail: PageRequestValidator()
      // --- start page_detail_extra code ---

      // --- end page_detail_extra code ---
      .required(),
    filter: TransactionRequestFilterValidator()
      // --- start filter_extra code ---

      // --- end filter_extra code ---
      .required(),
  }),
}

const getCompanyTransaction = {
  params: Joi.object({
    transactionId: Joi.string()
      // --- start transaction_id_extra code ---

      // --- end transaction_id_extra code ---
      .required(),
  }),
}

const updateCompanyTransactionStatus = {
  params: Joi.object({
    transactionId: Joi.string()
      // --- start transaction_id_extra code ---

      // --- end transaction_id_extra code ---
      .required(),
  }),
  body: Joi.object({
    status: TransactionStatusValidator()
      // --- start status_extra code ---

      // --- end status_extra code ---
      .required(),
    remarks: Joi.string()
      // --- start remarks_extra code ---

      // --- end remarks_extra code ---
      .required(),
  }),
}

const addCompanyRemarkOnTransaction = {
  params: Joi.object({
    transactionId: Joi.string()
      // --- start transaction_id_extra code ---

      // --- end transaction_id_extra code ---
      .required(),
  }),
  body: Joi.object({
    remarks: Joi.string()
      // --- start remarks_extra code ---

      // --- end remarks_extra code ---
      .required(),
  }),
}

const getCompany = {
  params: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
  }),
}

const updateCompany = {
  params: Joi.object({
    companyId: Joi.string()
      // --- start company_id_extra code ---

      // --- end company_id_extra code ---
      .required(),
  }),
  body: Joi.object({
    company: NewCompanyValidator()
      // --- start company_extra code ---

      // --- end company_extra code ---
      .required(),
  }),
}

// --- start validators code ---

// --- end validators code ---

export default {
  changeSelectedCompany,
  getCompanyUsers,
  addCompanyUser,
  getCompanyUser,
  updateCompanyUser,
  deleteCompanyUser,
  getCompanyContractors,
  addCompanyContractor,
  getCompanyContractor,
  updateCompanyContractor,
  deleteCompanyContractor,
  getCompanyTransactions,
  getCompanyTransaction,
  updateCompanyTransactionStatus,
  addCompanyRemarkOnTransaction,
  getCompany,
  updateCompany,
}
