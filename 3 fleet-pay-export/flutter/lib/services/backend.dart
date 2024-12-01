import 'package:dio/dio.dart';

import '../models/auth_token_response.dart';
import '../models/user_type.dart';
import '../models/string_response.dart';
import '../models/user_response.dart';
import '../models/user_update_request.dart';
import '../models/boolean_response.dart';
import '../models/company_user_response.dart';
import '../models/new_company.dart';
import '../models/new_user.dart';
import '../models/company_user_array_response.dart';
import '../models/role.dart';
import '../models/company_user.dart';
import '../models/contractor_array_response.dart';
import '../models/contractor_response.dart';
import '../models/new_contractor_request.dart';
import '../models/contractor.dart';
import '../models/paginated_transactions_response.dart';
import '../models/page_request.dart';
import '../models/transaction_request_filter.dart';
import '../models/transaction_response.dart';
import '../models/transaction_status.dart';
import '../models/transaction_remark_response.dart';
import '../models/company_response.dart';
import '../models/contractor_dashboard_summary_response.dart';
import '../models/transaction_array_response.dart';
import '../models/fund_request_preview_response.dart';
import '../models/new_fund_request.dart';

// --- start imports code ---
import 'package:flutter/foundation.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';
import 'package:fleet_pay/screens/login_screen.dart';
import 'package:fleet_pay/services/interceptors/refresh_token_interceptor.dart';

// --- end imports code ---

// --- start global_declerations code ---

String get baseUrl =>
    kDebugMode ? "http://localhost:8000/" : "https://api.fleetpaid.com/";

// --- end global_declerations code ---

class BackendService extends ChangeNotifier {
  final Dio _dio = Dio(
    // --- start dio_base_config code ---
    BaseOptions(baseUrl: baseUrl),
    // --- end dio_base_config code ---
  )
      // --- start dio_config code ---
      // --- end dio_config code ---
      ;

  // --- start declarations code ---
  final BuildContext context;

  BackendService(this.context) {
    _dio.interceptors.add(RefreshTokenInterceptor(
      context,
      onTokenExpired: () {
        NavigationService.rootNavigator.currentState?.pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
    ));
  }

  // --- end declarations code ---

  Future<AuthTokenResponse> login({
    required String username,
    required String password,
    required UserType userType,
  }) async {
    Response resp = await _dio.post(
      'auth/login',
      queryParameters: {
        // --- start login_query code ---

        // --- end login_query code ---
      },
      data: {
        'username': username,
        'password': password,
        'userType': userType.toJson(),
        // --- start login_body code ---

        // --- end login_body code ---
      },
    );
    AuthTokenResponse response = AuthTokenResponse.fromJson(resp.data);

    // --- start login_result code ---

    // --- end login_result code ---

    return response;
  }

  Future<StringResponse> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    Response resp = await _dio.post(
      'auth/changePassword',
      queryParameters: {
        // --- start change_password_query code ---

        // --- end change_password_query code ---
      },
      data: {
        'oldPassword': oldPassword,
        'newPassword': newPassword,
        // --- start change_password_body code ---

        // --- end change_password_body code ---
      },
    );
    StringResponse response = StringResponse.fromJson(resp.data);

    // --- start change_password_result code ---

    // --- end change_password_result code ---

    return response;
  }

  Future<UserResponse> me() async {
    Response resp = await _dio.get(
      'auth/me',
      queryParameters: {
        // --- start me_query code ---

        // --- end me_query code ---
      },
    );
    UserResponse response = UserResponse.fromJson(resp.data);

    // --- start me_result code ---

    // --- end me_result code ---

    return response;
  }

  Future<UserResponse> updateMe({
    required UserUpdateRequest user,
  }) async {
    Response resp = await _dio.patch(
      'auth/me',
      queryParameters: {
        // --- start update_me_query code ---

        // --- end update_me_query code ---
      },
      data: {
        'user': user.toJson(),
        // --- start update_me_body code ---

        // --- end update_me_body code ---
      },
    );
    UserResponse response = UserResponse.fromJson(resp.data);

    // --- start update_me_result code ---

    // --- end update_me_result code ---

    return response;
  }

  Future<StringResponse> sendForgotPasswordOtp({
    required String email,
  }) async {
    Response resp = await _dio.post(
      'auth/forgotPassword/sendOtp',
      queryParameters: {
        // --- start send_forgot_password_otp_query code ---

        // --- end send_forgot_password_otp_query code ---
      },
      data: {
        'email': email,
        // --- start send_forgot_password_otp_body code ---

        // --- end send_forgot_password_otp_body code ---
      },
    );
    StringResponse response = StringResponse.fromJson(resp.data);

    // --- start send_forgot_password_otp_result code ---

    // --- end send_forgot_password_otp_result code ---

    return response;
  }

  Future<BooleanResponse> validateForgotPasswordOtp({
    required String requestId,
    required String token,
  }) async {
    Response resp = await _dio.post(
      'auth/forgotPassword/validateOtp',
      queryParameters: {
        // --- start validate_forgot_password_otp_query code ---

        // --- end validate_forgot_password_otp_query code ---
      },
      data: {
        'requestId': requestId,
        'token': token,
        // --- start validate_forgot_password_otp_body code ---

        // --- end validate_forgot_password_otp_body code ---
      },
    );
    BooleanResponse response = BooleanResponse.fromJson(resp.data);

    // --- start validate_forgot_password_otp_result code ---

    // --- end validate_forgot_password_otp_result code ---

    return response;
  }

  Future<BooleanResponse> changePasswordWithOtp({
    required String requestId,
    required String token,
    required String newPassword,
  }) async {
    Response resp = await _dio.post(
      'auth/forgotPassword/changePassword',
      queryParameters: {
        // --- start change_password_with_otp_query code ---

        // --- end change_password_with_otp_query code ---
      },
      data: {
        'requestId': requestId,
        'token': token,
        'newPassword': newPassword,
        // --- start change_password_with_otp_body code ---

        // --- end change_password_with_otp_body code ---
      },
    );
    BooleanResponse response = BooleanResponse.fromJson(resp.data);

    // --- start change_password_with_otp_result code ---

    // --- end change_password_with_otp_result code ---

    return response;
  }

  Future<AuthTokenResponse> refreshToken({
    required String refreshToken,
  }) async {
    Response resp = await _dio.post(
      'auth/refreshToken',
      queryParameters: {
        // --- start refresh_token_query code ---

        // --- end refresh_token_query code ---
      },
      data: {
        'refreshToken': refreshToken,
        // --- start refresh_token_body code ---

        // --- end refresh_token_body code ---
      },
    );
    AuthTokenResponse response = AuthTokenResponse.fromJson(resp.data);

    // --- start refresh_token_result code ---

    // --- end refresh_token_result code ---

    return response;
  }

  Future<CompanyUserResponse> onboardCompany({
    required NewCompany company,
    required NewUser user,
  }) async {
    Response resp = await _dio.post(
      'admin/company/onboard',
      queryParameters: {
        // --- start onboard_company_query code ---

        // --- end onboard_company_query code ---
      },
      data: {
        'company': company.toJson(),
        'user': user.toJson(),
        // --- start onboard_company_body code ---

        // --- end onboard_company_body code ---
      },
    );
    CompanyUserResponse response = CompanyUserResponse.fromJson(resp.data);

    // --- start onboard_company_result code ---

    // --- end onboard_company_result code ---

    return response;
  }

  Future<CompanyUserArrayResponse> getCompaniesWithMyRole() async {
    Response resp = await _dio.get(
      'company/list',
      queryParameters: {
        // --- start get_companies_with_my_role_query code ---
        // --- end get_companies_with_my_role_query code ---
      },
    );
    CompanyUserArrayResponse response = CompanyUserArrayResponse.fromJson(resp.data);

    // --- start get_companies_with_my_role_result code ---
    // --- end get_companies_with_my_role_result code ---

    return response;
  }

  Future<UserResponse> changeSelectedCompany({
    required String companyId,
  }) async {
    Response resp = await _dio.post(
      'company/selectCompany',
      queryParameters: {
        // --- start change_selected_company_query code ---
        // --- end change_selected_company_query code ---
      },
      data: {
        'companyId': companyId,
        // --- start change_selected_company_body code ---
        // --- end change_selected_company_body code ---
      },
    );
    UserResponse response = UserResponse.fromJson(resp.data);

    // --- start change_selected_company_result code ---
    // --- end change_selected_company_result code ---

    return response;
  }

  Future<CompanyUserArrayResponse> getCompanyUsers({
    required String companyId,
  }) async {
    Response resp = await _dio.get(
      'company/user',
      queryParameters: {
        'companyId': companyId,
        // --- start get_company_users_query code ---
        // --- end get_company_users_query code ---
      },
    );
    CompanyUserArrayResponse response = CompanyUserArrayResponse.fromJson(resp.data);

    // --- start get_company_users_result code ---
    // --- end get_company_users_result code ---

    return response;
  }

  Future<CompanyUserResponse> addCompanyUser({
    required String companyId,
    required Role role,
    required NewUser user,
  }) async {
    Response resp = await _dio.post(
      'company/user',
      queryParameters: {
        // --- start add_company_user_query code ---
        // --- end add_company_user_query code ---
      },
      data: {
        'companyId': companyId,
        'role': role.toJson(),
        'user': user.toJson(),
        // --- start add_company_user_body code ---
        // --- end add_company_user_body code ---
      },
    );
    CompanyUserResponse response = CompanyUserResponse.fromJson(resp.data);

    // --- start add_company_user_result code ---
    // --- end add_company_user_result code ---

    return response;
  }

  Future<CompanyUserResponse> getCompanyUser({
    required String adminId,
  }) async {
    Response resp = await _dio.get(
      'company/user/$adminId',
      queryParameters: {
        // --- start get_company_user_query code ---
        // --- end get_company_user_query code ---
      },
    );
    CompanyUserResponse response = CompanyUserResponse.fromJson(resp.data);

    // --- start get_company_user_result code ---
    // --- end get_company_user_result code ---

    return response;
  }

  Future<CompanyUserResponse> updateCompanyUser({
    required String adminId,
    required CompanyUser admin,
  }) async {
    Response resp = await _dio.put(
      'company/user/$adminId',
      queryParameters: {
        // --- start update_company_user_query code ---
        // --- end update_company_user_query code ---
      },
      data: {
        'admin': admin.toJson(),
        // --- start update_company_user_body code ---
        // --- end update_company_user_body code ---
      },
    );
    CompanyUserResponse response = CompanyUserResponse.fromJson(resp.data);

    // --- start update_company_user_result code ---
    // --- end update_company_user_result code ---

    return response;
  }

  Future<StringResponse> deleteCompanyUser({
    required String adminId,
  }) async {
    Response resp = await _dio.delete(
      'company/user/$adminId',
      queryParameters: {
        // --- start delete_company_user_query code ---
        // --- end delete_company_user_query code ---
      },
      data: {
        // --- start delete_company_user_body code ---
        // --- end delete_company_user_body code ---
      },
    );
    StringResponse response = StringResponse.fromJson(resp.data);

    // --- start delete_company_user_result code ---
    // --- end delete_company_user_result code ---

    return response;
  }

  Future<ContractorArrayResponse> getCompanyContractors({
    required String companyId,
  }) async {
    Response resp = await _dio.get(
      'company/contractor',
      queryParameters: {
        'companyId': companyId,
        // --- start get_company_contractors_query code ---
        // --- end get_company_contractors_query code ---
      },
    );
    ContractorArrayResponse response = ContractorArrayResponse.fromJson(resp.data);

    // --- start get_company_contractors_result code ---
    // --- end get_company_contractors_result code ---

    return response;
  }

  Future<ContractorResponse> addCompanyContractor({
    required String parentCompanyId,
    required NewContractorRequest request,
  }) async {
    Response resp = await _dio.post(
      'company/contractor',
      queryParameters: {
        // --- start add_company_contractor_query code ---
        // --- end add_company_contractor_query code ---
      },
      data: {
        'parentCompanyId': parentCompanyId,
        'request': request.toJson(),
        // --- start add_company_contractor_body code ---
        // --- end add_company_contractor_body code ---
      },
    );
    ContractorResponse response = ContractorResponse.fromJson(resp.data);

    // --- start add_company_contractor_result code ---
    // --- end add_company_contractor_result code ---

    return response;
  }

  Future<ContractorResponse> getCompanyContractor({
    required String contractorId,
  }) async {
    Response resp = await _dio.get(
      'company/contractor/$contractorId',
      queryParameters: {
        // --- start get_company_contractor_query code ---
        // --- end get_company_contractor_query code ---
      },
    );
    ContractorResponse response = ContractorResponse.fromJson(resp.data);

    // --- start get_company_contractor_result code ---
    // --- end get_company_contractor_result code ---

    return response;
  }

  Future<ContractorResponse> updateCompanyContractor({
    required String contractorId,
    required Contractor contractor,
  }) async {
    Response resp = await _dio.put(
      'company/contractor/$contractorId',
      queryParameters: {
        // --- start update_company_contractor_query code ---
        // --- end update_company_contractor_query code ---
      },
      data: {
        'contractor': contractor.toJson(),
        // --- start update_company_contractor_body code ---
        // --- end update_company_contractor_body code ---
      },
    );
    ContractorResponse response = ContractorResponse.fromJson(resp.data);

    // --- start update_company_contractor_result code ---
    // --- end update_company_contractor_result code ---

    return response;
  }

  Future<StringResponse> deleteCompanyContractor({
    required String contractorId,
  }) async {
    Response resp = await _dio.delete(
      'company/contractor/$contractorId',
      queryParameters: {
        // --- start delete_company_contractor_query code ---
        // --- end delete_company_contractor_query code ---
      },
      data: {
        // --- start delete_company_contractor_body code ---
        // --- end delete_company_contractor_body code ---
      },
    );
    StringResponse response = StringResponse.fromJson(resp.data);

    // --- start delete_company_contractor_result code ---
    // --- end delete_company_contractor_result code ---

    return response;
  }

  Future<PaginatedTransactionsResponse> getCompanyTransactions({
    required String companyId,
    required PageRequest pageDetail,
    required TransactionRequestFilter filter,
  }) async {
    Response resp = await _dio.post(
      'company/transaction',
      queryParameters: {
        // --- start get_company_transactions_query code ---
        // --- end get_company_transactions_query code ---
      },
      data: {
        'companyId': companyId,
        'pageDetail': pageDetail.toJson(),
        'filter': filter.toJson(),
        // --- start get_company_transactions_body code ---

        // --- end get_company_transactions_body code ---
      },
    );
    PaginatedTransactionsResponse response = PaginatedTransactionsResponse.fromJson(resp.data);

    // --- start get_company_transactions_result code ---
    // --- end get_company_transactions_result code ---

    return response;
  }

  Future<TransactionResponse> getCompanyTransaction({
    required String transactionId,
  }) async {
    Response resp = await _dio.get(
      'company/transaction/$transactionId',
      queryParameters: {
        // --- start get_company_transaction_query code ---
        // --- end get_company_transaction_query code ---
      },
    );
    TransactionResponse response = TransactionResponse.fromJson(resp.data);

    // --- start get_company_transaction_result code ---
    // --- end get_company_transaction_result code ---

    return response;
  }

  Future<TransactionResponse> updateCompanyTransactionStatus({
    required String transactionId,
    required TransactionStatus status,
    required String remarks,
  }) async {
    Response resp = await _dio.put(
      'company/transaction/$transactionId',
      queryParameters: {
        // --- start update_company_transaction_status_query code ---
        // --- end update_company_transaction_status_query code ---
      },
      data: {
        'status': status.toJson(),
        'remarks': remarks,
        // --- start update_company_transaction_status_body code ---
        // --- end update_company_transaction_status_body code ---
      },
    );
    TransactionResponse response = TransactionResponse.fromJson(resp.data);

    // --- start update_company_transaction_status_result code ---
    // --- end update_company_transaction_status_result code ---

    return response;
  }

  Future<TransactionRemarkResponse> addCompanyRemarkOnTransaction({
    required String transactionId,
    required String remarks,
  }) async {
    Response resp = await _dio.post(
      'company/transaction/$transactionId/remarks',
      queryParameters: {
        // --- start add_company_remark_on_transaction_query code ---
        // --- end add_company_remark_on_transaction_query code ---
      },
      data: {
        'remarks': remarks,
        // --- start add_company_remark_on_transaction_body code ---
        // --- end add_company_remark_on_transaction_body code ---
      },
    );
    TransactionRemarkResponse response = TransactionRemarkResponse.fromJson(resp.data);

    // --- start add_company_remark_on_transaction_result code ---
    // --- end add_company_remark_on_transaction_result code ---

    return response;
  }

  Future<CompanyResponse> getCompany({
    required String companyId,
  }) async {
    Response resp = await _dio.get(
      'company/$companyId',
      queryParameters: {
        // --- start get_company_query code ---

        // --- end get_company_query code ---
      },
    );
    CompanyResponse response = CompanyResponse.fromJson(resp.data);

    // --- start get_company_result code ---

    // --- end get_company_result code ---

    return response;
  }

  Future<CompanyResponse> updateCompany({
    required String companyId,
    required NewCompany company,
  }) async {
    Response resp = await _dio.put(
      'company/$companyId',
      queryParameters: {
        // --- start update_company_query code ---

        // --- end update_company_query code ---
      },
      data: {
        'company': company.toJson(),
        // --- start update_company_body code ---

        // --- end update_company_body code ---
      },
    );
    CompanyResponse response = CompanyResponse.fromJson(resp.data);

    // --- start update_company_result code ---

    // --- end update_company_result code ---

    return response;
  }

  Future<ContractorArrayResponse> getContractors() async {
    Response resp = await _dio.get(
      'contractor/',
      queryParameters: {
        // --- start get_contractors_query code ---

        // --- end get_contractors_query code ---
      },
    );
    ContractorArrayResponse response = ContractorArrayResponse.fromJson(resp.data);

    // --- start get_contractors_result code ---

    // --- end get_contractors_result code ---

    return response;
  }

  Future<ContractorDashboardSummaryResponse> getContractorDashboard({
    required String contractorId,
  }) async {
    Response resp = await _dio.get(
      'contractor/summary',
      queryParameters: {
        'contractorId': contractorId,
        // --- start get_contractor_dashboard_query code ---
        // --- end get_contractor_dashboard_query code ---
      },
    );
    ContractorDashboardSummaryResponse response = ContractorDashboardSummaryResponse.fromJson(resp.data);

    // --- start get_contractor_dashboard_result code ---
    // --- end get_contractor_dashboard_result code ---

    return response;
  }

  Future<TransactionArrayResponse> getContractorTransactions({
    required String contractorId,
  }) async {
    Response resp = await _dio.get(
      'contractor/transaction',
      queryParameters: {
        'contractorId': contractorId,
        // --- start get_contractor_transactions_query code ---

        // --- end get_contractor_transactions_query code ---
      },
    );
    TransactionArrayResponse response = TransactionArrayResponse.fromJson(resp.data);

    // --- start get_contractor_transactions_result code ---

    // --- end get_contractor_transactions_result code ---

    return response;
  }

  Future<TransactionResponse> getContractorTransaction({
    required String transactionId,
  }) async {
    Response resp = await _dio.get(
      'contractor/transaction/$transactionId',
      queryParameters: {
        // --- start get_contractor_transaction_query code ---

        // --- end get_contractor_transaction_query code ---
      },
    );
    TransactionResponse response = TransactionResponse.fromJson(resp.data);

    // --- start get_contractor_transaction_result code ---

    // --- end get_contractor_transaction_result code ---

    return response;
  }

  Future<TransactionResponse> updateContractorTransactionStatus({
    required String transactionId,
    required TransactionStatus status,
    required String remarks,
  }) async {
    Response resp = await _dio.put(
      'contractor/transaction/$transactionId',
      queryParameters: {
        // --- start update_contractor_transaction_status_query code ---
        // --- end update_contractor_transaction_status_query code ---
      },
      data: {
        // --- start update_contractor_transaction_status_body code ---
        // --- end update_contractor_transaction_status_body code ---
      },
    );
    TransactionResponse response = TransactionResponse.fromJson(resp.data);

    // --- start update_contractor_transaction_status_result code ---
    // --- end update_contractor_transaction_status_result code ---

    return response;
  }

  Future<TransactionRemarkResponse> addContractorRemarkOnTransaction({
    required String transactionId,
    required String remarks,
  }) async {
    Response resp = await _dio.post(
      'contractor/transaction/$transactionId/remarks',
      queryParameters: {
        // --- start add_contractor_remark_on_transaction_query code ---
        // --- end add_contractor_remark_on_transaction_query code ---
      },
      data: {
        'remarks': remarks,
        // --- start add_contractor_remark_on_transaction_body code ---
        // --- end add_contractor_remark_on_transaction_body code ---
      },
    );
    TransactionRemarkResponse response = TransactionRemarkResponse.fromJson(resp.data);

    // --- start add_contractor_remark_on_transaction_result code ---
    // --- end add_contractor_remark_on_transaction_result code ---

    return response;
  }

  Future<FundRequestPreviewResponse> previewFundRequest({
    required NewFundRequest request,
  }) async {
    Response resp = await _dio.post(
      'contractor/transaction/preview',
      queryParameters: {
        // --- start preview_fund_request_query code ---

        // --- end preview_fund_request_query code ---
      },
      data: {
        'request': request.toJson(),
        // --- start preview_fund_request_body code ---

        // --- end preview_fund_request_body code ---
      },
    );
    FundRequestPreviewResponse response = FundRequestPreviewResponse.fromJson(resp.data);

    // --- start preview_fund_request_result code ---

    // --- end preview_fund_request_result code ---

    return response;
  }

  Future<TransactionResponse> requestFund({
    required NewFundRequest request,
  }) async {
    Response resp = await _dio.post(
      'contractor/transaction/add',
      queryParameters: {
        // --- start request_fund_query code ---

        // --- end request_fund_query code ---
      },
      data: {
        'request': request.toJson(),
        // --- start request_fund_body code ---

        // --- end request_fund_body code ---
      },
    );
    TransactionResponse response = TransactionResponse.fromJson(resp.data);

    // --- start request_fund_result code ---

    // --- end request_fund_result code ---

    return response;
  }

  // --- start extension code ---
  // --- end extension code ---
}

extension on Enum {
  String toJson() {
    return name;
  }
}

extension UTCDate on DateTime {
  String toUTCString() {
    return toUtc().toIso8601String();
  }
}
