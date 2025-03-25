import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'company_business_hours.g.dart';
part 'company_business_hours.freezed.dart';

@unfreezed
class CompanyBusinessHours with _$CompanyBusinessHours {
  // --- start init code ---
  
  // --- end init code ---

  factory CompanyBusinessHours({
    required String openingHour,
    required String closingHour,
    required String timezone,
  }) = _CompanyBusinessHours;

  factory CompanyBusinessHours.fromJson(Map<String, dynamic> json) => _$CompanyBusinessHoursFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
