import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'pagination_metadata.g.dart';
part 'pagination_metadata.freezed.dart';

@unfreezed
class PaginationMetadata with _$PaginationMetadata {
  // --- start init code ---
  
  // --- end init code ---

  factory PaginationMetadata({
    required int total,
    required int page,
    required int size,
    required bool previous,
    required bool next,
  }) = _PaginationMetadata;

  factory PaginationMetadata.fromJson(Map<String, dynamic> json) => _$PaginationMetadataFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
