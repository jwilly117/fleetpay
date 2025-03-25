import { Joi } from "express-validation";

import { NewCompanyValidator } from '../../validators/new_company.validator';
import { NewUserValidator } from '../../validators/new_user.validator';

// --- start declarations code ---

// --- end declarations code ---

const onboardCompany = {
  body: Joi.object({
    company: NewCompanyValidator()
      // --- start company_extra code ---

      // --- end company_extra code ---
      .required(),
    user: NewUserValidator()
      // --- start user_extra code ---

      // --- end user_extra code ---
      .required(),
  }),
}

// --- start validators code ---

// --- end validators code ---

export default {
  onboardCompany,
}
