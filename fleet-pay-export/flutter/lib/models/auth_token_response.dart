import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_token.dart';

// --- start import code ---
  
// --- end import code ---

part 'auth_token_response.g.dart';
part 'auth_token_response.freezed.dart';

@unfreezed
class AuthTokenResponse with _$AuthTokenResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory AuthTokenResponse({
    @Default(-1) int code,
    String? error,
    AuthToken? result,
  }) = _AuthTokenResponse;

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) => _$AuthTokenResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
