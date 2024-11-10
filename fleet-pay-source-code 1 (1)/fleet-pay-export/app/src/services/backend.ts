// --- start directives code ---
"use server";
// --- end directives code ---
import a from "axios";
import type { AxiosInstance, AxiosResponse } from "axios";

import type { AuthToken } from '../models/auth_token';
import type { BackendResponse } from '../models/response';
import type { UserType } from '../models/user_type';
import type { User } from '../models/user';
import type { UserUpdateRequest } from '../models/user_update_request';
import type { CompanyUser } from '../models/company_user';
import type { NewCompany } from '../models/new_company';
import type { NewUser } from '../models/new_user';
import type { Role } from '../models/role';
import type { Contractor } from '../models/contractor';
import type { NewContractorRequest } from '../models/new_contractor_request';
import type { PaginatedTransactions } from '../models/paginated_transactions';
import type { PageRequest } from '../models/page_request';
import type { TransactionRequestFilter } from '../models/transaction_request_filter';
import type { Transaction } from '../models/transaction';
import type { TransactionStatus } from '../models/transaction_status';
import type { TransactionRemark } from '../models/transaction_remark';
import type { Company } from '../models/company';
import type { ContractorDashboardSummary } from '../models/contractor_dashboard_summary';
import type { FundRequestPreview } from '../models/fund_request_preview';
import type { NewFundRequest } from '../models/new_fund_request';

// --- start imports code ---
import { cookies } from "next/headers";

// --- end imports code ---

// --- start configs code ---
const backendUrl =
  process.env.REACT_APP_BACKEND_URL ?? "http://localhost:8000/";
// --- end configs code ---

const _axios: AxiosInstance = a.create({
  baseURL: backendUrl,
  headers: {
    "content-type": "application/json",
  }
});

// --- start interceptors code ---
_axios.interceptors.request.use(
  async (config) => {
    console.log(`${config.url}`);
    const cookieValue = cookies().get("authUser")?.value;

    if (!cookieValue) return config;

    let authUser = JSON.parse(cookieValue!) as AuthToken;

    if (
      new Date() > new Date(authUser.expiresAt) &&
      !config.url?.includes("refreshToken")
    ) {
      // We have to refresh the token now
      authUser = (await refreshToken(authUser.refreshToken)).result!;
    }

    config.headers.Authorization = `Bearer ${authUser?.accessToken}`;

    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);
_axios.interceptors.response.use(
  async (resp) => {
    return resp;
  },
  (error) => {
    if (error.response?.status === 401) {
      return Promise.resolve(error.response);
    }
  }
);
// --- end interceptors code ---

export async function login(
  username: string,
  password: string,
  userType: UserType,
): Promise<BackendResponse<AuthToken>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/login`,
    {
      'username': username,
      'password': password,
      'userType': userType,
      // --- start login_body code ---

      // --- end login_body code ---
    },
    {
      params: {
        // --- start login_query code ---
        // --- end login_query code ---
      },
    }
  );

  // --- start login_result code ---
  cookies().set("authUser", JSON.stringify(resp.data.result));
  // --- end login_result code ---

  return resp.data as BackendResponse<AuthToken>;  
}

export async function changePassword(
  oldPassword: string,
  newPassword: string,
): Promise<BackendResponse<string>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/changePassword`,
    {
      'oldPassword': oldPassword,
      'newPassword': newPassword,
      // --- start change_password_body code ---

      // --- end change_password_body code ---
    },
    {
      params: {
        // --- start change_password_query code ---
        // --- end change_password_query code ---
      },
    }
  );

  // --- start change_password_result code ---

  // --- end change_password_result code ---

  return resp.data as BackendResponse<string>;  
}

export async function me(): Promise<BackendResponse<User>> {
  const resp: AxiosResponse = await _axios.get(
    `auth/me`,
    {
      params: {
        // --- start me_query code ---
      // --- end me_query code ---
      },
    }
  );

  // --- start me_result code ---
  // --- end me_result code ---

  return resp.data as BackendResponse<User>;  
}

export async function updateMe(
  user: UserUpdateRequest,
): Promise<BackendResponse<User>> {
  const resp: AxiosResponse = await _axios.patch(
    `auth/me`,
    {
      'user': user,
      // --- start update_me_body code ---

      // --- end update_me_body code ---
    },
    {
      params: {
        // --- start update_me_query code ---
        // --- end update_me_query code ---
      },
    }
  );

  // --- start update_me_result code ---

  // --- end update_me_result code ---

  return resp.data as BackendResponse<User>;  
}

export async function sendForgotPasswordOtp(
  email: string,
): Promise<BackendResponse<string>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/forgotPassword/sendOtp`,
    {
      'email': email,
      // --- start send_forgot_password_otp_body code ---
      // --- end send_forgot_password_otp_body code ---
    },
    {
      params: {
        // --- start send_forgot_password_otp_query code ---
        // --- end send_forgot_password_otp_query code ---
      },
    }
  );

  // --- start send_forgot_password_otp_result code ---

  // --- end send_forgot_password_otp_result code ---

  return resp.data as BackendResponse<string>;  
}

export async function validateForgotPasswordOtp(
  requestId: string,
  token: string,
): Promise<BackendResponse<boolean>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/forgotPassword/validateOtp`,
    {
      'requestId': requestId,
      'token': token,
      // --- start validate_forgot_password_otp_body code ---

      // --- end validate_forgot_password_otp_body code ---
    },
    {
      params: {
        // --- start validate_forgot_password_otp_query code ---

        // --- end validate_forgot_password_otp_query code ---
      },
    }
  );

  // --- start validate_forgot_password_otp_result code ---

  // --- end validate_forgot_password_otp_result code ---

  return resp.data as BackendResponse<boolean>;  
}

export async function changePasswordWithOtp(
  requestId: string,
  token: string,
  newPassword: string,
): Promise<BackendResponse<boolean>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/forgotPassword/changePassword`,
    {
      'requestId': requestId,
      'token': token,
      'newPassword': newPassword,
      // --- start change_password_with_otp_body code ---

      // --- end change_password_with_otp_body code ---
    },
    {
      params: {
        // --- start change_password_with_otp_query code ---

        // --- end change_password_with_otp_query code ---
      },
    }
  );

  // --- start change_password_with_otp_result code ---

  // --- end change_password_with_otp_result code ---

  return resp.data as BackendResponse<boolean>;  
}

export async function refreshToken(
  refreshToken: string,
): Promise<BackendResponse<AuthToken>> {
  const resp: AxiosResponse = await _axios.post(
    `auth/refreshToken`,
    {
      'refreshToken': refreshToken,
      // --- start refresh_token_body code ---

      // --- end refresh_token_body code ---
    },
    {
      params: {
        // --- start refresh_token_query code ---
        // --- end refresh_token_query code ---
      },
    }
  );

  // --- start refresh_token_result code ---
  // --- end refresh_token_result code ---

  return resp.data as BackendResponse<AuthToken>;  
}

export async function onboardCompany(
  company: NewCompany,
  user: NewUser,
): Promise<BackendResponse<CompanyUser>> {
  const resp: AxiosResponse = await _axios.post(
    `admin/company/onboard`,
    {
      'company': company,
      'user': user,
      // --- start onboard_company_body code ---

      // --- end onboard_company_body code ---
    },
    {
      params: {
        // --- start onboard_company_query code ---
        // --- end onboard_company_query code ---
      },
    }
  );

  // --- start onboard_company_result code ---

  // --- end onboard_company_result code ---

  return resp.data as BackendResponse<CompanyUser>;  
}

export async function getCompaniesWithMyRole(): Promise<BackendResponse<CompanyUser[]>> {
  const resp: AxiosResponse = await _axios.get(
    `company/list`,
    {
      params: {
        // --- start get_companies_with_my_role_query code ---
      // --- end get_companies_with_my_role_query code ---
      },
    }
  );

  // --- start get_companies_with_my_role_result code ---

  // --- end get_companies_with_my_role_result code ---

  return resp.data as BackendResponse<CompanyUser[]>;  
}

export async function changeSelectedCompany(
  companyId: string,
): Promise<BackendResponse<User>> {
  const resp: AxiosResponse = await _axios.post(
    `company/selectCompany`,
    {
      'companyId': companyId,
      // --- start change_selected_company_body code ---

      // --- end change_selected_company_body code ---
    },
    {
      params: {
        // --- start change_selected_company_query code ---
        // --- end change_selected_company_query code ---
      },
    }
  );

  // --- start change_selected_company_result code ---

  // --- end change_selected_company_result code ---

  return resp.data as BackendResponse<User>;  
}

export async function getCompanyUsers(
  companyId: string,
): Promise<BackendResponse<CompanyUser[]>> {
  const resp: AxiosResponse = await _axios.get(
    `company/user`,
    {
      params: {
        'companyId': companyId,
        // --- start get_company_users_query code ---

      // --- end get_company_users_query code ---
      },
    }
  );

  // --- start get_company_users_result code ---

  // --- end get_company_users_result code ---

  return resp.data as BackendResponse<CompanyUser[]>;  
}

export async function addCompanyUser(
  companyId: string,
  role: Role,
  user: NewUser,
): Promise<BackendResponse<CompanyUser>> {
  const resp: AxiosResponse = await _axios.post(
    `company/user`,
    {
      'companyId': companyId,
      'role': role,
      'user': user,
      // --- start add_company_user_body code ---

      // --- end add_company_user_body code ---
    },
    {
      params: {
        // --- start add_company_user_query code ---
        // --- end add_company_user_query code ---
      },
    }
  );

  // --- start add_company_user_result code ---

  // --- end add_company_user_result code ---

  return resp.data as BackendResponse<CompanyUser>;  
}

export async function getCompanyUser(
  adminId: string,
): Promise<BackendResponse<CompanyUser>> {
  const resp: AxiosResponse = await _axios.get(
    `company/user/${adminId}`,
    {
      params: {
        // --- start get_company_user_query code ---
      // --- end get_company_user_query code ---
      },
    }
  );

  // --- start get_company_user_result code ---

  // --- end get_company_user_result code ---

  return resp.data as BackendResponse<CompanyUser>;  
}

export async function updateCompanyUser(
  adminId: string,
  admin: CompanyUser,
): Promise<BackendResponse<CompanyUser>> {
  const resp: AxiosResponse = await _axios.put(
    `company/user/${adminId}`,
    {
      'admin': admin,
      // --- start update_company_user_body code ---

      // --- end update_company_user_body code ---
    },
    {
      params: {
        // --- start update_company_user_query code ---
        // --- end update_company_user_query code ---
      },
    }
  );

  // --- start update_company_user_result code ---

  // --- end update_company_user_result code ---

  return resp.data as BackendResponse<CompanyUser>;  
}

export async function deleteCompanyUser(
  adminId: string,
): Promise<BackendResponse<string>> {
  const resp: AxiosResponse = await _axios.delete(
    `company/user/${adminId}`,
    {
      params: {
        // --- start delete_company_user_query code ---
      // --- end delete_company_user_query code ---
      },
    }
  );

  // --- start delete_company_user_result code ---

  // --- end delete_company_user_result code ---

  return resp.data as BackendResponse<string>;  
}

export async function getCompanyContractors(
  companyId: string,
): Promise<BackendResponse<Contractor[]>> {
  const resp: AxiosResponse = await _axios.get(
    `company/contractor`,
    {
      params: {
        'companyId': companyId,
        // --- start get_company_contractors_query code ---

      // --- end get_company_contractors_query code ---
      },
    }
  );

  // --- start get_company_contractors_result code ---

  // --- end get_company_contractors_result code ---

  return resp.data as BackendResponse<Contractor[]>;  
}

export async function addCompanyContractor(
  parentCompanyId: string,
  request: NewContractorRequest,
): Promise<BackendResponse<Contractor>> {
  const resp: AxiosResponse = await _axios.post(
    `company/contractor`,
    {
      'parentCompanyId': parentCompanyId,
      'request': request,
      // --- start add_company_contractor_body code ---

      // --- end add_company_contractor_body code ---
    },
    {
      params: {
        // --- start add_company_contractor_query code ---
        // --- end add_company_contractor_query code ---
      },
    }
  );

  // --- start add_company_contractor_result code ---

  // --- end add_company_contractor_result code ---

  return resp.data as BackendResponse<Contractor>;  
}

export async function getCompanyContractor(
  contractorId: string,
): Promise<BackendResponse<Contractor>> {
  const resp: AxiosResponse = await _axios.get(
    `company/contractor/${contractorId}`,
    {
      params: {
        // --- start get_company_contractor_query code ---
        // --- end get_company_contractor_query code ---
      },
    }
  );

  // --- start get_company_contractor_result code ---

  // --- end get_company_contractor_result code ---

  return resp.data as BackendResponse<Contractor>;  
}

export async function updateCompanyContractor(
  contractorId: string,
  contractor: Contractor,
): Promise<BackendResponse<Contractor>> {
  const resp: AxiosResponse = await _axios.put(
    `company/contractor/${contractorId}`,
    {
      'contractor': contractor,
      // --- start update_company_contractor_body code ---

      // --- end update_company_contractor_body code ---
    },
    {
      params: {
        // --- start update_company_contractor_query code ---
        // --- end update_company_contractor_query code ---
      },
    }
  );

  // --- start update_company_contractor_result code ---

  // --- end update_company_contractor_result code ---

  return resp.data as BackendResponse<Contractor>;  
}

export async function deleteCompanyContractor(
  contractorId: string,
): Promise<BackendResponse<string>> {
  const resp: AxiosResponse = await _axios.delete(
    `company/contractor/${contractorId}`,
    {
      params: {
        // --- start delete_company_contractor_query code ---
        // --- end delete_company_contractor_query code ---
      },
    }
  );

  // --- start delete_company_contractor_result code ---

  // --- end delete_company_contractor_result code ---

  return resp.data as BackendResponse<string>;  
}

export async function getCompanyTransactions(
  companyId: string,
  pageDetail: PageRequest,
  filter: TransactionRequestFilter,
): Promise<BackendResponse<PaginatedTransactions>> {
  const resp: AxiosResponse = await _axios.post(
    `company/transaction`,
    {
      'companyId': companyId,
      'pageDetail': pageDetail,
      'filter': filter,
      // --- start get_company_transactions_body code ---

      // --- end get_company_transactions_body code ---
    },
    {
      params: {
        // --- start get_company_transactions_query code ---
        // --- end get_company_transactions_query code ---
      },
    }
  );

  // --- start get_company_transactions_result code ---
  // --- end get_company_transactions_result code ---

  return resp.data as BackendResponse<PaginatedTransactions>;  
}

export async function getCompanyTransaction(
  transactionId: string,
): Promise<BackendResponse<Transaction>> {
  const resp: AxiosResponse = await _axios.get(
    `company/transaction/${transactionId}`,
    {
      params: {
        // --- start get_company_transaction_query code ---
        // --- end get_company_transaction_query code ---
      },
    }
  );

  // --- start get_company_transaction_result code ---

  // --- end get_company_transaction_result code ---

  return resp.data as BackendResponse<Transaction>;  
}

export async function updateCompanyTransactionStatus(
  transactionId: string,
  status: TransactionStatus,
  remarks: string,
): Promise<BackendResponse<Transaction>> {
  const resp: AxiosResponse = await _axios.put(
    `company/transaction/${transactionId}`,
    {
      'status': status,
      'remarks': remarks,
      // --- start update_company_transaction_status_body code ---

      // --- end update_company_transaction_status_body code ---
    },
    {
      params: {
        // --- start update_company_transaction_status_query code ---
        // --- end update_company_transaction_status_query code ---
      },
    }
  );

  // --- start update_company_transaction_status_result code ---

  // --- end update_company_transaction_status_result code ---

  return resp.data as BackendResponse<Transaction>;  
}

export async function addCompanyRemarkOnTransaction(
  transactionId: string,
  remarks: string,
): Promise<BackendResponse<TransactionRemark>> {
  const resp: AxiosResponse = await _axios.post(
    `company/transaction/${transactionId}/remarks`,
    {
      'remarks': remarks,
      // --- start add_company_remark_on_transaction_body code ---

      // --- end add_company_remark_on_transaction_body code ---
    },
    {
      params: {
        // --- start add_company_remark_on_transaction_query code ---
        // --- end add_company_remark_on_transaction_query code ---
      },
    }
  );

  // --- start add_company_remark_on_transaction_result code ---

  // --- end add_company_remark_on_transaction_result code ---

  return resp.data as BackendResponse<TransactionRemark>;  
}

export async function getCompany(
  companyId: string,
): Promise<BackendResponse<Company>> {
  const resp: AxiosResponse = await _axios.get(
    `company/${companyId}`,
    {
      params: {
        // --- start get_company_query code ---
      // --- end get_company_query code ---
      },
    }
  );

  // --- start get_company_result code ---

  // --- end get_company_result code ---

  return resp.data as BackendResponse<Company>;  
}

export async function updateCompany(
  companyId: string,
  company: NewCompany,
): Promise<BackendResponse<Company>> {
  const resp: AxiosResponse = await _axios.put(
    `company/${companyId}`,
    {
      'company': company,
      // --- start update_company_body code ---

      // --- end update_company_body code ---
    },
    {
      params: {
        // --- start update_company_query code ---
        // --- end update_company_query code ---
      },
    }
  );

  // --- start update_company_result code ---

  // --- end update_company_result code ---

  return resp.data as BackendResponse<Company>;  
}

export async function getContractors(): Promise<BackendResponse<Contractor[]>> {
  const resp: AxiosResponse = await _axios.get(
    `contractor/`,
    {
      params: {
        // --- start get_contractors_query code ---
      // --- end get_contractors_query code ---
      },
    }
  );

  // --- start get_contractors_result code ---

  // --- end get_contractors_result code ---

  return resp.data as BackendResponse<Contractor[]>;  
}

export async function getContractorDashboard(
  contractorId: string,
): Promise<BackendResponse<ContractorDashboardSummary>> {
  const resp: AxiosResponse = await _axios.get(
    `contractor/summary`,
    {
      params: {
        'contractorId': contractorId,
        // --- start get_contractor_dashboard_query code ---
      // --- end get_contractor_dashboard_query code ---
      },
    }
  );

  // --- start get_contractor_dashboard_result code ---

  // --- end get_contractor_dashboard_result code ---

  return resp.data as BackendResponse<ContractorDashboardSummary>;  
}

export async function getContractorTransactions(
  contractorId: string,
): Promise<BackendResponse<Transaction[]>> {
  const resp: AxiosResponse = await _axios.get(
    `contractor/transaction`,
    {
      params: {
        'contractorId': contractorId,
        // --- start get_contractor_transactions_query code ---
      // --- end get_contractor_transactions_query code ---
      },
    }
  );

  // --- start get_contractor_transactions_result code ---

  // --- end get_contractor_transactions_result code ---

  return resp.data as BackendResponse<Transaction[]>;  
}

export async function getContractorTransaction(
  transactionId: string,
): Promise<BackendResponse<Transaction>> {
  const resp: AxiosResponse = await _axios.get(
    `contractor/transaction/${transactionId}`,
    {
      params: {
        // --- start get_contractor_transaction_query code ---
        // --- end get_contractor_transaction_query code ---
      },
    }
  );

  // --- start get_contractor_transaction_result code ---

  // --- end get_contractor_transaction_result code ---

  return resp.data as BackendResponse<Transaction>;  
}

export async function updateContractorTransactionStatus(
  transactionId: string,
  status: TransactionStatus,
  remarks: string,
): Promise<BackendResponse<Transaction>> {
  const resp: AxiosResponse = await _axios.put(
    `contractor/transaction/${transactionId}`,
    {
      // --- start update_contractor_transaction_status_body code ---
      // --- end update_contractor_transaction_status_body code ---
    },
    {
      params: {
        // --- start update_contractor_transaction_status_query code ---
        // --- end update_contractor_transaction_status_query code ---
      },
    }
  );

  // --- start update_contractor_transaction_status_result code ---

  // --- end update_contractor_transaction_status_result code ---

  return resp.data as BackendResponse<Transaction>;  
}

export async function addContractorRemarkOnTransaction(
  transactionId: string,
  remarks: string,
): Promise<BackendResponse<TransactionRemark>> {
  const resp: AxiosResponse = await _axios.post(
    `contractor/transaction/${transactionId}/remarks`,
    {
      'remarks': remarks,
      // --- start add_contractor_remark_on_transaction_body code ---

      // --- end add_contractor_remark_on_transaction_body code ---
    },
    {
      params: {
        // --- start add_contractor_remark_on_transaction_query code ---
        // --- end add_contractor_remark_on_transaction_query code ---
      },
    }
  );

  // --- start add_contractor_remark_on_transaction_result code ---

  // --- end add_contractor_remark_on_transaction_result code ---

  return resp.data as BackendResponse<TransactionRemark>;  
}

export async function previewFundRequest(
  request: NewFundRequest,
): Promise<BackendResponse<FundRequestPreview>> {
  const resp: AxiosResponse = await _axios.post(
    `contractor/transaction/preview`,
    {
      'request': request,
      // --- start preview_fund_request_body code ---

      // --- end preview_fund_request_body code ---
    },
    {
      params: {
        // --- start preview_fund_request_query code ---
        // --- end preview_fund_request_query code ---
      },
    }
  );

  // --- start preview_fund_request_result code ---

  // --- end preview_fund_request_result code ---

  return resp.data as BackendResponse<FundRequestPreview>;  
}

export async function requestFund(
  request: NewFundRequest,
): Promise<BackendResponse<Transaction>> {
  const resp: AxiosResponse = await _axios.post(
    `contractor/transaction/add`,
    {
      'request': request,
      // --- start request_fund_body code ---

      // --- end request_fund_body code ---
    },
    {
      params: {
        // --- start request_fund_query code ---
        // --- end request_fund_query code ---
      },
    }
  );

  // --- start request_fund_result code ---

  // --- end request_fund_result code ---

  return resp.data as BackendResponse<Transaction>;  
}


// --- start extension_functions code ---

// --- end extension_functions code ---

