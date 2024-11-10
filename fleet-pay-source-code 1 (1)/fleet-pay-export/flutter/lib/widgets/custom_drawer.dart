import 'package:fleet_pay/screens/transaction_history.dart';
import 'package:fleet_pay/services/firebase.dart';
import 'package:fleet_pay/services/hive.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? currentHomePath;
    NavigationService.homeNavigator.currentState?.popUntil((route) {
      currentHomePath = route.settings.name;
      return true;
    });
    return Drawer(
      backgroundColor: const Color(0xfff0f4f8),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    onTap: () {
                      NavigationService.rootNavigator.currentState
                          ?.pushNamedAndRemoveUntil(
                        '/home',
                        (_) => false,
                      );
                    },
                    leading: const Icon(
                      Icons.home_outlined,
                    ),
                    tileColor: currentHomePath == "/home"
                        ? Theme.of(context).colorScheme.primary.withOpacity(.2)
                        : null,
                    title: Text(
                      "Home",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    height: 1,
                    color: Color(0xffC7C7C7),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.receipt,
                    ),
                    tileColor: currentHomePath == "/transactionHistory"
                        ? Theme.of(context).colorScheme.primary.withOpacity(.2)
                        : null,
                    title: Text(
                      "Transaction History",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                      NavigationService.rootNavigator.currentState?.push(
                        MaterialPageRoute(
                          builder: (_) => const TransactionHistory(),
                        ),
                      );
                    },
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    height: 1,
                    color: Color(0xffC7C7C7),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.help_outline_sharp,
                    ),
                    tileColor: currentHomePath == "/helpAndSupport"
                        ? Theme.of(context).colorScheme.primary.withOpacity(.2)
                        : null,
                    title: Text(
                      "Help & Support",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    onTap: () {
                      NavigationService.rootNavigator.currentState
                          ?.pushNamedAndRemoveUntil(
                        '/helpAndSupport',
                        (_) => false,
                      );
                    },
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    height: 1,
                    color: Color(0xffC7C7C7),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                    ),
                    onTap: () async {
                      // TODO: Add confirmation dialog
                      await hive.setValue("authPayload", null);
                      await firebaseService.messaging!.deleteToken();
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (_) => false,
                      );
                    },
                    title: Text(
                      "Sign Out",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 1,
              color: Color(0xffC7C7C7),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
              child: Text(
                "Fleet Pay v1.0.0",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Terms and Conditions",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(
                              0xff29ABE2,
                            ),
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                    child: VerticalDivider(
                      color: Color(0xffC7C7C7),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Privacy Policy",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color(
                              0xff29ABE2,
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
