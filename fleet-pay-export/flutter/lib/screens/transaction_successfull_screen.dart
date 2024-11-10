import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/screens/home_screen.dart';
import 'package:fleet_pay/screens/transaction_history.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/body_text.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TransactionSuccessfulScreen extends StatefulWidget {
  final Transaction transaction;
  const TransactionSuccessfulScreen({super.key, required this.transaction});

  @override
  State<TransactionSuccessfulScreen> createState() =>
      _TransactionSuccessfulScreenState();
}

class _TransactionSuccessfulScreenState
    extends State<TransactionSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      children: [
                        const BodyLargeText(
                          text: "Transaction Successful",
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: <TextSpan>[
                              const TextSpan(
                                  text: 'Thank you for using Fleet Pay.\n\n'),
                              const TextSpan(
                                text: 'Your deposit of ',
                              ),
                              TextSpan(
                                text:
                                    '\$${widget.transaction.netAmount.toStringAsFixed(2)}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const TextSpan(
                                text:
                                    ' will be processed\nand deposited into your account by\nmidnight.\n\nIf you have any questions or need further\nassistance, please contact our\naccounting team at:\n\n',
                              ),
                              const TextSpan(
                                text: 'Email: ',
                              ),
                              TextSpan(
                                text: 'account@company.com',
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                              const TextSpan(
                                text: '\nPhone: ',
                              ),
                              TextSpan(
                                text: '(111) 111-1111',
                                style: const TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Add phone tap functionality here
                                  },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        RichText(
                          text: TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                navigateToPage(
                                    context: context,
                                    pageName: const TransactionHistory());
                              },
                            text: "View Transaction History",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: const Color(0xff29ABE2),
                                  fontSize: 14,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CustomButton(
                  label: 'Go Home',
                  icon: Icons.home,
                  width: MediaQuery.of(context).size.width * 0.5,
                  onTap: () {
                    navigateWithAllReplaced(
                        context: context, pageName: const HomeScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
