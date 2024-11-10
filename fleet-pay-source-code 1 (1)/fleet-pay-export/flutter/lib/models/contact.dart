import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'contact.g.dart';
part 'contact.freezed.dart';

@unfreezed
class Contact with _$Contact {
  // --- start init code ---
  
  // --- end init code ---

  factory Contact({
    required String name,
    required String email,
    String? phone,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
