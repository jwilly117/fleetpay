import 'package:fleet_pay/widgets/body_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({super.key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BodyLargeText(
                text: "Help & Support",
              ),
              const SizedBox(
                height: 40,
              ),
              const BodyMediumText(
                text:
                    "If you have any questions or need assistance, our accounting team is here to help.",
              ),
              const SizedBox(
                height: 40,
              ),
              BodyLargeText(
                text: "Accounting Department Contact",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                    ),
              ),
              const SizedBox(
                height: 40,
              ),
              BodyLargeText(
                text: "Name:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                    ),
              ),
              BodyLargeText(
                text: "Angela Beasly",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                    ),
              ),
              const SizedBox(
                height: 40,
              ),
              BodyLargeText(
                text: "Phone:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                    ),
              ),
              RichText(
                text: TextSpan(
                  text: "(111) 111-1111",
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16,
                        color: const Color(
                          0xff29ABE2,
                        ),
                      ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              BodyLargeText(
                text: "Email Address:",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16,
                    ),
              ),
              RichText(
                text: TextSpan(
                  text: "PBeasley@company.com",
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 16,
                        color: const Color(
                          0xff29ABE2,
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
