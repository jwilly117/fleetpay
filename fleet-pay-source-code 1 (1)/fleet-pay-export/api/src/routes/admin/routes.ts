import express from "express";
import { validate } from "express-validation";

import adminValidators from "./validators";
import adminControllers from "./controllers";

// --- start imports code ---

import { authenticateUser } from "../auth/middleware";
// --- end imports code ---

const adminRoutes = express.Router();

// --- start global_request_middlewares code ---
adminRoutes.use(authenticateUser);
// --- end global_request_middlewares code ---

adminRoutes.post(
  '/company/onboard',
  // --- start onboard_company_pre_validation_middlewares code ---

  // --- end onboard_company_pre_validation_middlewares code ---
  validate(adminValidators.onboardCompany, {}, { abortEarly: false }),
  // --- start onboard_company_middlewares code ---

  // --- end onboard_company_middlewares code ---
  adminControllers.onboardCompany,
);

// --- start global_response_middlewares code ---

// --- end global_response_middlewares code ---

export default adminRoutes;

