import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_business_hours.dart';
import 'notification_settings.dart';
import 'contact.dart';
// --- start import code ---
  
// --- end import code ---

part 'company.g.dart';
part 'company.freezed.dart';

@unfreezed
class Company with _$Company {
  // --- start init code ---
  
  // --- end init code ---

  factory Company({
    required String id,
    required String name,
    List<String>? emails,
    List<String>? phoneNumbers,
    String? profilePicture,
    CompanyBusinessHours? businessHours,
    NotificationSettings? notificationSettings,
    required List<Contact> accountingDepartmentContacts,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
