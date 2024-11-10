import { Joi } from "express-validation";

import { UserTypeValidator } from '../../validators/user_type.validator';
import { UserUpdateRequestValidator } from '../../validators/user_update_request.validator';

// --- start declarations code ---

// --- end declarations code ---

const login = {
  body: Joi.object({
    username: Joi.string()
      // --- start username_extra code ---
  
    // --- end username_extra code ---
      .required(),
    password: Joi.string()
      // --- start password_extra code ---
  
    // --- end password_extra code ---
      .required(),
    userType: UserTypeValidator()
      // --- start user_type_extra code ---
  
    // --- end user_type_extra code ---
      .required(),
  }),
}

const changePassword = {
  body: Joi.object({
    oldPassword: Joi.string()
      // --- start old_password_extra code ---
  
    // --- end old_password_extra code ---
      .required(),
    newPassword: Joi.string()
      // --- start new_password_extra code ---
  
    // --- end new_password_extra code ---
      .required(),
  }),
}

const updateMe = {
  body: Joi.object({
    user: UserUpdateRequestValidator()
      // --- start user_extra code ---
  
    // --- end user_extra code ---
      .required(),
  }),
}

const sendForgotPasswordOtp = {
  body: Joi.object({
    email: Joi.string()
      // --- start email_extra code ---
  
    // --- end email_extra code ---
      .required(),
  }),
}

const validateForgotPasswordOtp = {
  body: Joi.object({
    requestId: Joi.string()
      // --- start request_id_extra code ---
  
      // --- end request_id_extra code ---
      .required(),
    token: Joi.string()
      // --- start token_extra code ---
  
      // --- end token_extra code ---
      .required(),
  }),
}

const changePasswordWithOtp = {
  body: Joi.object({
    requestId: Joi.string()
      // --- start request_id_extra code ---
  
      // --- end request_id_extra code ---
      .required(),
    token: Joi.string()
      // --- start token_extra code ---
  
      // --- end token_extra code ---
      .required(),
    newPassword: Joi.string()
      // --- start new_password_extra code ---
  
    // --- end new_password_extra code ---
      .required(),
  }),
}

const refreshToken = {
  body: Joi.object({
    refreshToken: Joi.string()
      // --- start refresh_token_extra code ---
  
    // --- end refresh_token_extra code ---
      .required(),
  }),
}

// --- start validators code ---

// --- end validators code ---

export default {
  login,
  changePassword,
  updateMe,
  sendForgotPasswordOtp,
  validateForgotPasswordOtp,
  changePasswordWithOtp,
  refreshToken,
}
