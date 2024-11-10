import sendgrid from "@sendgrid/mail";
sendgrid.setApiKey(process.env.SENDGRID_API_KEY!);

export enum EmailTemplates {
  OTP_EMAIL = "d-114d5f27856244fe8f5b6f162faa0a54",
  PAYMENT_REQUEST = "d-57c3e722f1454202ac2f0f43ac2ecf50",
  PAYMENT_REJECTED = "d-73abc12a819d4800ae8d7523a6c15fd7",
  PAYMENT_APPROVED = "d-328b2937c5e046eda2e47410d8c92e05",
  USER_INVITE = "d-83db0a2499744f0fb4ee01e7a1149f64",
}

export async function sendEmailWithTemplateId({
  to,
  templateId,
  templateValues,
}: {
  to: string | string[];
  templateId: EmailTemplates;
  templateValues:
  | OTPEmailData
  | RejectedEmailData
  | ApprovedEmailData
  | PaymentRequestEmailData
  | UserInviteEmailData;
}) {
  await sendgrid
    .send({
      from: {
        name: "FleetPay",
        email: "fleetpay@etteo.com",
      },
      to: to,
      templateId: templateId,
      dynamicTemplateData: templateValues,
    })
    .catch((e) => {
      console.error("Unable to send email", JSON.stringify(e));
      console.log(
        to, templateId, templateValues,
      );

    });
}

export interface RejectedEmailData {
  company_name: string;
  amount_requested: string;
  transaction_id: string;
  rejection_datetime: string;
  company: string;
  rejection_reason: string;
}

export interface OTPEmailData {
  name: string,
  otp_code: string,
  otp_validity: string,
}

export interface ApprovedEmailData {
  company_name: string;
  amount_approved: string;
  transaction_id: string;
  approval_datetime: string;
  company: string;
}

export interface PaymentRequestEmailData {
  company_name: string;
  amount_requested: string;
  transaction_id: string;
  request_datetime: string;
  action_url: string;
}

export interface UserInviteEmailData {
  username: string;
  password: string;
  name: string;
  role: string;
  company: string;
  inviter: string;
  action_url: string;
}
