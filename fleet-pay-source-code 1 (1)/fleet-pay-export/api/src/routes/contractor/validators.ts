import { Joi } from "express-validation";

import { TransactionStatusValidator } from '../../validators/transaction_status.validator';
import { NewFundRequestValidator } from '../../validators/new_fund_request.validator';

// --- start declarations code ---
  
// --- end declarations code ---

const getContractorDashboard = {
  query: Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
    // --- end contractor_id_extra code ---
      .required(),
  }),
}

const getContractorTransactions = {
  query: Joi.object({
    contractorId: Joi.string()
      // --- start contractor_id_extra code ---
  
    // --- end contractor_id_extra code ---
      .required(),
  }),
}

const getContractorTransaction = {
  params: Joi.object({
    transactionId: Joi.string()
      // --- start transaction_id_extra code ---
  
    // --- end transaction_id_extra code ---
      .required(),
  }),
}

const updateContractorTransactionStatus = {
  params: Joi.object({
    transactionId: Joi.string()
      // --- start transaction_id_extra code ---
  
    // --- end transaction_id_extra code ---
      .required(),
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

const addContractorRemarkOnTransaction = {
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

const previewFundRequest = {
  body: Joi.object({
    request: NewFundRequestValidator()
      // --- start request_extra code ---
  
    // --- end request_extra code ---
      .required(),
  }),
}

const requestFund = {
  body: Joi.object({
    request: NewFundRequestValidator()
      // --- start request_extra code ---
  
    // --- end request_extra code ---
      .required(),
  }),
}

// --- start validators code ---
  
// --- end validators code ---

export default {
  getContractorDashboard,
  getContractorTransactions,
  getContractorTransaction,
  updateContractorTransactionStatus,
  addContractorRemarkOnTransaction,
  previewFundRequest,
  requestFund,
}
