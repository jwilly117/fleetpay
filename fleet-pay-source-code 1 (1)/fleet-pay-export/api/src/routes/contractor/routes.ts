import express from "express";
import { validate } from "express-validation";

import contractorValidators from "./validators";
import contractorControllers from "./controllers";

// --- start imports code ---
import { authenticateUser } from "../auth/middleware";
// --- end imports code ---

const contractorRoutes = express.Router();

// --- start global_request_middlewares code ---
contractorRoutes.use(authenticateUser);

// --- end global_request_middlewares code ---

contractorRoutes.get(
  '/',
  // --- start get_contractors_middlewares code ---

  // --- end get_contractors_middlewares code ---
  contractorControllers.getContractors,
);

contractorRoutes.get(
  '/summary',
  // --- start get_contractor_dashboard_pre_validation_middlewares code ---

  // --- end get_contractor_dashboard_pre_validation_middlewares code ---
  validate(contractorValidators.getContractorDashboard, {}, { abortEarly: false }),
  // --- start get_contractor_dashboard_middlewares code ---

  // --- end get_contractor_dashboard_middlewares code ---
  contractorControllers.getContractorDashboard,
);

contractorRoutes.get(
  '/transaction',
  // --- start get_contractor_transactions_pre_validation_middlewares code ---

  // --- end get_contractor_transactions_pre_validation_middlewares code ---
  validate(contractorValidators.getContractorTransactions, {}, { abortEarly: false }),
  // --- start get_contractor_transactions_middlewares code ---

  // --- end get_contractor_transactions_middlewares code ---
  contractorControllers.getContractorTransactions,
);

contractorRoutes.get(
  '/transaction/:transactionId',
  // --- start get_contractor_transaction_pre_validation_middlewares code ---

  // --- end get_contractor_transaction_pre_validation_middlewares code ---
  validate(contractorValidators.getContractorTransaction, {}, { abortEarly: false }),
  // --- start get_contractor_transaction_middlewares code ---

  // --- end get_contractor_transaction_middlewares code ---
  contractorControllers.getContractorTransaction,
);

contractorRoutes.put(
  '/transaction/:transactionId',
  // --- start update_contractor_transaction_status_pre_validation_middlewares code ---

  // --- end update_contractor_transaction_status_pre_validation_middlewares code ---
  validate(contractorValidators.updateContractorTransactionStatus, {}, { abortEarly: false }),
  // --- start update_contractor_transaction_status_middlewares code ---

  // --- end update_contractor_transaction_status_middlewares code ---
  contractorControllers.updateContractorTransactionStatus,
);

contractorRoutes.post(
  '/transaction/:transactionId/remarks',
  // --- start add_contractor_remark_on_transaction_pre_validation_middlewares code ---

  // --- end add_contractor_remark_on_transaction_pre_validation_middlewares code ---
  validate(contractorValidators.addContractorRemarkOnTransaction, {}, { abortEarly: false }),
  // --- start add_contractor_remark_on_transaction_middlewares code ---

  // --- end add_contractor_remark_on_transaction_middlewares code ---
  contractorControllers.addContractorRemarkOnTransaction,
);

contractorRoutes.post(
  '/transaction/preview',
  // --- start preview_fund_request_pre_validation_middlewares code ---

  // --- end preview_fund_request_pre_validation_middlewares code ---
  validate(contractorValidators.previewFundRequest, {}, { abortEarly: false }),
  // --- start preview_fund_request_middlewares code ---

  // --- end preview_fund_request_middlewares code ---
  contractorControllers.previewFundRequest,
);

contractorRoutes.post(
  '/transaction/add',
  // --- start request_fund_pre_validation_middlewares code ---

  // --- end request_fund_pre_validation_middlewares code ---
  validate(contractorValidators.requestFund, {}, { abortEarly: false }),
  // --- start request_fund_middlewares code ---

  // --- end request_fund_middlewares code ---
  contractorControllers.requestFund,
);

// --- start global_response_middlewares code ---

// --- end global_response_middlewares code ---

export default contractorRoutes;

