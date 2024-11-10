import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'page_request.g.dart';
part 'page_request.freezed.dart';

@unfreezed
class PageRequest with _$PageRequest {
  // --- start init code ---
  
  // --- end init code ---

  factory PageRequest({
    required int page,
    required int size,
  }) = _PageRequest;

  factory PageRequest.fromJson(Map<String, dynamic> json) => _$PageRequestFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
