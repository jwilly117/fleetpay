import 'package:freezed_annotation/freezed_annotation.dart';

// --- start import code ---
  
// --- end import code ---

part 'new_user.g.dart';
part 'new_user.freezed.dart';

@unfreezed
class NewUser with _$NewUser {
  // --- start init code ---
  
  // --- end init code ---

  factory NewUser({
    required String name,
    required String email,
    required String username,
    String? profilePicture,
    String? phoneNumber,
  }) = _NewUser;

  factory NewUser.fromJson(Map<String, dynamic> json) => _$NewUserFromJson(json);

  // --- start extension code ---
  
  // --- end extension code ---

}
