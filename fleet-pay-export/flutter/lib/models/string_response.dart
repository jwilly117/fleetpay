import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'string_response.g.dart';
part 'string_response.freezed.dart';

@unfreezed
class StringResponse with _$StringResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory StringResponse({
    @Default(-1) int code,
    String? error,
    String? result,
  }) = _StringResponse;

  factory StringResponse.fromJson(Map<String, dynamic> json) => _$StringResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
