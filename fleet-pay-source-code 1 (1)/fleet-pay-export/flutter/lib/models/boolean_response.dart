import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'boolean_response.g.dart';
part 'boolean_response.freezed.dart';

@unfreezed
class BooleanResponse with _$BooleanResponse {
  // --- start init code ---
  
  // --- end init code ---

  factory BooleanResponse({
    @Default(-1) int code,
    String? error,
    bool? result,
  }) = _BooleanResponse;

  factory BooleanResponse.fromJson(Map<String, dynamic> json) => _$BooleanResponseFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
