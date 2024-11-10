import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_business_hours.dart';
import 'notification_settings.dart';
import 'contact.dart';
// --- start import code ---
  
// --- end import code ---

part 'new_company.g.dart';
part 'new_company.freezed.dart';

@unfreezed
class NewCompany with _$NewCompany {
  // --- start init code ---
  
  // --- end init code ---

  factory NewCompany({
    required String name,
    String? profilePicture,
    List<String>? emails,
    List<String>? phoneNumbers,
    CompanyBusinessHours? businessHours,
    NotificationSettings? notificationSettings,
    Contact? accountingDepartmentContact,
  }) = _NewCompany;

  factory NewCompany.fromJson(Map<String, dynamic> json) => _$NewCompanyFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
