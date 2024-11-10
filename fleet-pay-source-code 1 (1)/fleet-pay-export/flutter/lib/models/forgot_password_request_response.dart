import 'package:freezed_annotation/freezed_annotation.dart';

import 'forgot_password_request.dart';

// --- start import code ---

// --- end import code ---

part 'forgot_password_request_response.g.dart';
part 'forgot_password_request_response.freezed.dart';

@unfreezed
class ForgotPasswordRequestResponse with _$ForgotPasswordRequestResponse {
  // --- start init code ---

  // --- end init code ---

  factory ForgotPasswordRequestResponse({
    @Default(-1) int code,
    String? error,
    ForgotPasswordRequest? result,
  }) = _ForgotPasswordRequestResponse;

  factory ForgotPasswordRequestResponse.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestResponseFromJson(json);

  // --- start extension code ---

  // --- end extension code ---

}
