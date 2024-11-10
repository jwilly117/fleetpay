import 'package:fleet_pay/constants/strings.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/body_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class UnderstandingTransactionScreen extends StatefulWidget {
  const UnderstandingTransactionScreen({super.key});

  @override
  State<UnderstandingTransactionScreen> createState() =>
      _UnderstandingTransactionScreenState();
}

class _UnderstandingTransactionScreenState
    extends State<UnderstandingTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BodyLargeText(
                      text: "Understanding Your Transaction",
                    ),
                    const SizedBox(height: 40),
                    BodyMediumText(
                      text: understandingYourTransaction,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    style: CustomButtonStyle.secondary,
                    label: "CANCEL",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      Navigator.of(
                              NavigationService.homeNavigator.currentContext!)
                          .pushNamed(
                        "/selectAmount",
                      );
                    },
                    label: "CONTINUE",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
