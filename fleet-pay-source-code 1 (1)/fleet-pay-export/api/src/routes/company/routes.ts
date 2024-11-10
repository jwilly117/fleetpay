import express from "express";
import { validate } from "express-validation";

import companyValidators from "./validators";
import companyControllers from "./controllers";

// --- start imports code ---
import { authenticateUser } from "../auth/middleware";
// --- end imports code ---

const companyRoutes = express.Router();

// --- start global_request_middlewares code ---
companyRoutes.use(authenticateUser);
// --- end global_request_middlewares code ---

companyRoutes.get(
  '/list',
  // --- start get_companies_with_my_role_middlewares code ---

  // --- end get_companies_with_my_role_middlewares code ---
  companyControllers.getCompaniesWithMyRole,
);

companyRoutes.post(
  '/selectCompany',
  // --- start change_selected_company_pre_validation_middlewares code ---

  // --- end change_selected_company_pre_validation_middlewares code ---
  validate(companyValidators.changeSelectedCompany, {}, { abortEarly: false }),
  // --- start change_selected_company_middlewares code ---

  // --- end change_selected_company_middlewares code ---
  companyControllers.changeSelectedCompany,
);

companyRoutes.get(
  '/user',
  // --- start get_company_users_pre_validation_middlewares code ---

  // --- end get_company_users_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyUsers, {}, { abortEarly: false }),
  // --- start get_company_users_middlewares code ---

  // --- end get_company_users_middlewares code ---
  companyControllers.getCompanyUsers,
);

companyRoutes.post(
  '/user',
  // --- start add_company_user_pre_validation_middlewares code ---

  // --- end add_company_user_pre_validation_middlewares code ---
  validate(companyValidators.addCompanyUser, {}, { abortEarly: false }),
  // --- start add_company_user_middlewares code ---

  // --- end add_company_user_middlewares code ---
  companyControllers.addCompanyUser,
);

companyRoutes.get(
  '/user/:adminId',
  // --- start get_company_user_pre_validation_middlewares code ---

  // --- end get_company_user_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyUser, {}, { abortEarly: false }),
  // --- start get_company_user_middlewares code ---

  // --- end get_company_user_middlewares code ---
  companyControllers.getCompanyUser,
);

companyRoutes.put(
  '/user/:adminId',
  // --- start update_company_user_pre_validation_middlewares code ---

  // --- end update_company_user_pre_validation_middlewares code ---
  validate(companyValidators.updateCompanyUser, {}, { abortEarly: false }),
  // --- start update_company_user_middlewares code ---

  // --- end update_company_user_middlewares code ---
  companyControllers.updateCompanyUser,
);

companyRoutes.delete(
  '/user/:adminId',
  // --- start delete_company_user_pre_validation_middlewares code ---

  // --- end delete_company_user_pre_validation_middlewares code ---
  validate(companyValidators.deleteCompanyUser, {}, { abortEarly: false }),
  // --- start delete_company_user_middlewares code ---

  // --- end delete_company_user_middlewares code ---
  companyControllers.deleteCompanyUser,
);

companyRoutes.get(
  '/contractor',
  // --- start get_company_contractors_pre_validation_middlewares code ---

  // --- end get_company_contractors_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyContractors, {}, { abortEarly: false }),
  // --- start get_company_contractors_middlewares code ---

  // --- end get_company_contractors_middlewares code ---
  companyControllers.getCompanyContractors,
);

companyRoutes.post(
  '/contractor',
  // --- start add_company_contractor_pre_validation_middlewares code ---

  // --- end add_company_contractor_pre_validation_middlewares code ---
  validate(companyValidators.addCompanyContractor, {}, { abortEarly: false }),
  // --- start add_company_contractor_middlewares code ---

  // --- end add_company_contractor_middlewares code ---
  companyControllers.addCompanyContractor,
);

companyRoutes.get(
  '/contractor/:contractorId',
  // --- start get_company_contractor_pre_validation_middlewares code ---

  // --- end get_company_contractor_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyContractor, {}, { abortEarly: false }),
  // --- start get_company_contractor_middlewares code ---

  // --- end get_company_contractor_middlewares code ---
  companyControllers.getCompanyContractor,
);

companyRoutes.put(
  '/contractor/:contractorId',
  // --- start update_company_contractor_pre_validation_middlewares code ---

  // --- end update_company_contractor_pre_validation_middlewares code ---
  validate(companyValidators.updateCompanyContractor, {}, { abortEarly: false }),
  // --- start update_company_contractor_middlewares code ---

  // --- end update_company_contractor_middlewares code ---
  companyControllers.updateCompanyContractor,
);

companyRoutes.delete(
  '/contractor/:contractorId',
  // --- start delete_company_contractor_pre_validation_middlewares code ---

  // --- end delete_company_contractor_pre_validation_middlewares code ---
  validate(companyValidators.deleteCompanyContractor, {}, { abortEarly: false }),
  // --- start delete_company_contractor_middlewares code ---

  // --- end delete_company_contractor_middlewares code ---
  companyControllers.deleteCompanyContractor,
);

companyRoutes.post(
  '/transaction',
  // --- start get_company_transactions_pre_validation_middlewares code ---
  
  // --- end get_company_transactions_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyTransactions, {}, { abortEarly: false }),
  // --- start get_company_transactions_middlewares code ---

  // --- end get_company_transactions_middlewares code ---
  companyControllers.getCompanyTransactions,
);

companyRoutes.get(
  '/transaction/:transactionId',
  // --- start get_company_transaction_pre_validation_middlewares code ---

  // --- end get_company_transaction_pre_validation_middlewares code ---
  validate(companyValidators.getCompanyTransaction, {}, { abortEarly: false }),
  // --- start get_company_transaction_middlewares code ---

  // --- end get_company_transaction_middlewares code ---
  companyControllers.getCompanyTransaction,
);

companyRoutes.put(
  '/transaction/:transactionId',
  // --- start update_company_transaction_status_pre_validation_middlewares code ---

  // --- end update_company_transaction_status_pre_validation_middlewares code ---
  validate(companyValidators.updateCompanyTransactionStatus, {}, { abortEarly: false }),
  // --- start update_company_transaction_status_middlewares code ---

  // --- end update_company_transaction_status_middlewares code ---
  companyControllers.updateCompanyTransactionStatus,
);

companyRoutes.post(
  '/transaction/:transactionId/remarks',
  // --- start add_company_remark_on_transaction_pre_validation_middlewares code ---

  // --- end add_company_remark_on_transaction_pre_validation_middlewares code ---
  validate(companyValidators.addCompanyRemarkOnTransaction, {}, { abortEarly: false }),
  // --- start add_company_remark_on_transaction_middlewares code ---

  // --- end add_company_remark_on_transaction_middlewares code ---
  companyControllers.addCompanyRemarkOnTransaction,
);

companyRoutes.get(
  '/:companyId',
  // --- start get_company_pre_validation_middlewares code ---

  // --- end get_company_pre_validation_middlewares code ---
  validate(companyValidators.getCompany, {}, { abortEarly: false }),
  // --- start get_company_middlewares code ---

  // --- end get_company_middlewares code ---
  companyControllers.getCompany,
);

companyRoutes.put(
  '/:companyId',
  // --- start update_company_pre_validation_middlewares code ---

  // --- end update_company_pre_validation_middlewares code ---
  validate(companyValidators.updateCompany, {}, { abortEarly: false }),
  // --- start update_company_middlewares code ---

  // --- end update_company_middlewares code ---
  companyControllers.updateCompany,
);

// --- start global_response_middlewares code ---

// --- end global_response_middlewares code ---

export default companyRoutes;

