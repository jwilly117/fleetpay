import 'package:fleet_pay/models/account_status.dart';
import 'package:fleet_pay/models/user.dart';
import 'package:fleet_pay/models/user_response.dart';
import 'package:fleet_pay/models/user_update_request.dart';
import 'package:fleet_pay/screens/change_password.dart';
import 'package:fleet_pay/screens/home_screen.dart';
import 'package:fleet_pay/screens/login_screen.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/services/firebase.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  BuildContext context;
  User? user;

  late BackendService backendService;

  AuthProvider(this.context) {
    backendService = Provider.of<BackendService>(context, listen: false);
  }

  Future<void> authNavigation(
    BuildContext context, [
    dynamic payload,
  ]) async {
    String? authPayload = hive.getString("authPayload");

    if (authPayload == null) {
      navigateWithReplacement(
        context: context,
        pageName: const LoginScreen(),
      );
      return;
    }
    User? user = await getMe();
    if (context.mounted) {
      if (user == null) {
        navigateWithReplacement(
          context: context,
          pageName: const LoginScreen(),
        );
        return;
      }
      if (user.status == AccountStatus.CHANGE_PASSWORD) {
        navigateWithReplacement(
          context: context,
          pageName: ChangePassword(
            isInitialPasswordChange: true,
            oldPassword: payload as String?,
          ),
        );
      } else {
        await updateToken(user);
        navigateWithReplacement(
          context: context,
          pageName: const HomeScreenProxy(),
        );
      }
    }
    return;
  }

  Future<User?> getMe() async {
    UserResponse userResponse = await backendService.me();
    if (userResponse.code == 200) {
      user = userResponse.result;
    }
    return user;
  }

  Future<void> updateToken(User user) async {
    String? token = await firebaseService.messaging!.getToken();

    if (user.fcmTokens.contains(token)) {
      return;
    }

    await backendService.updateMe(
      user: UserUpdateRequest(fcmTokens: [
        ...user.fcmTokens,
        token!,
      ]),
    );
  }
}
