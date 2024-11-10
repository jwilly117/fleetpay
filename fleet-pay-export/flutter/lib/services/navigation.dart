import 'dart:ui';

import 'package:fleet_pay/screens/home_screen.dart';
import 'package:fleet_pay/screens/login_screen.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> rootNavigator =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeNavigator =
      GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(Widget pageNmae) {
    return rootNavigator.currentState!.push(getPageRoute(pageNmae));
  }
}

Future navigateToPage<T>({
  required BuildContext context,
  required Widget pageName,
}) {
  return Navigator.push(context, getPageRoute(pageName));
}

void navigateWithReplacement({
  required BuildContext context,
  required Widget pageName,
}) {
  Navigator.pushReplacement(context, getPageRoute(pageName));
}

void navigateWithReplacementNamed({
  required BuildContext context,
  required String pageName,
}) {
  Navigator.pushReplacementNamed(context, pageName);
}

void navigateWithName({
  required BuildContext context,
  required Widget pageName,
}) {
  Navigator.pushReplacement(context, getPageRoute(pageName));
}

Future<void> navigateUser(
  BuildContext context,
) async {
  String? authPayload = (hive.getString("authPayload"));

  if (authPayload == null) {
    navigateToPage(context: context, pageName: const LoginScreen());
    return;
  }

  navigateToPage(context: context, pageName: const HomeScreen());
  return;
}

Future<void> navigateWithAllReplaced(
    {required BuildContext context, required Widget pageName}) async {
  await Navigator.pushAndRemoveUntil(
    context,
    getPageRoute(pageName),
    (route) => false,
  );
}

Route<T> getPageRoute<T>(Widget destination) {
  return PageRouteBuilder<T>(
    transitionDuration: const Duration(milliseconds: 150),
    pageBuilder: (context, animation, secondaryAnimation) => destination,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var tween = Tween(
        begin: 0.0,
        end: 1.0,
      );
      var curvedAnimation = CurvedAnimation(
        curve: Curves.easeIn,
        parent: animation,
      );
      double value = tween.animate(curvedAnimation).value;
      return Opacity(
        opacity: value,
        child: Transform.scale(
          scale: lerpDouble(.9, 1, value)!,
          child: child,
        ),
      );
    },
  );
}
