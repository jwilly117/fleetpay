import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---

// --- end import code ---

part 'notification_settings.g.dart';
part 'notification_settings.freezed.dart';

@unfreezed
class NotificationSettings with _$NotificationSettings {
  // --- start init code ---

  // --- end init code ---

  factory NotificationSettings({
    required bool emailNotifications,
    required List<String> emails,
    required bool smsNotifications,
    required List<String> phoneNumbers,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) => _$NotificationSettingsFromJson(json);

  // --- start extension code ---

  // --- end extension code ---

}
