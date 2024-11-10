import 'package:fleet_pay/screens/profile_screen.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title; //for now it is a constant image in all screens
  final Color? backgroundColor;
  final List<Widget>? actions;
  const CustomAppBar(
      {super.key, this.title, this.backgroundColor, this.actions});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.grey,
      elevation: 2,
      surfaceTintColor: Colors.transparent,
      title: title ??
          Image.asset(
            "assets/app_bar_logo.png",
            height: preferredSize.height * 0.6,
            width: preferredSize.width * 0.3,
          ),
      backgroundColor: backgroundColor ?? Colors.white,
      actions: actions ??
          [
            IconButton(
              onPressed: () {
                NavigationService.rootNavigator.currentState?.push(
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ),
                );
              },
              icon: const Icon(
                FontAwesomeIcons.solidCircleUser,
              ),
            )
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
