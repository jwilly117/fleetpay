import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

// --- start import code ---
  
// --- end import code ---

part 'user_response.g.dart';
part 'user_response.freezed.dart';

@unfreezed
class UserResponse with _$UserResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory UserResponse({
    @Default(-1) int code,
    String? error,
    User? result,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
