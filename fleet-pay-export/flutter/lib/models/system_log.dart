import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
// --- start import code ---
  
// --- end import code ---

part 'system_log.g.dart';
part 'system_log.freezed.dart';

@unfreezed
class SystemLog with _$SystemLog {
  // --- start init code ---
  
  // --- end init code ---

  factory SystemLog({
    required String id,
    required String userId,
    required String companyId,
    User? user,
    required String action,
    required String message,
    required DateTime createdAt,
  }) = _SystemLog;

  factory SystemLog.fromJson(Map<String, dynamic> json) => _$SystemLogFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
