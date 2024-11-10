import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/providers/transaction_provider.dart';
import 'package:fleet_pay/services/backend.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/body_text.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:fleet_pay/widgets/key_value.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FinalConfirmationScreen extends StatefulWidget {
  const FinalConfirmationScreen({super.key});

  @override
  State<FinalConfirmationScreen> createState() =>
      _FinalConfirmationScreenState();
}

class _FinalConfirmationScreenState extends State<FinalConfirmationScreen> {
  late TransactionProvider transactionProvider;
  late BackendService backendService;
  late ContractorProvider contractorProvider;
  bool loading = false;
  _completeTransaction() async {
    setState(() {
      loading = true;
    });
    Transaction transaction =
        await transactionProvider.requestFund(transactionProvider.fundRequest!);
    setState(() {
      loading = false;
    });

    if (mounted) {
      Navigator.of(NavigationService.homeNavigator.currentContext!).pushNamed(
        "/transactionSuccessful",
        arguments: transaction,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    transactionProvider = Provider.of<TransactionProvider>(context);
    contractorProvider = Provider.of<ContractorProvider>(context);
    backendService = Provider.of<BackendService>(context);
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width * 0.05,
        ),
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
                        text: "Final Confirmation",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const KeyValue(
                        leading: "Amount to be deposited",
                        trailing: "",
                        leadingwt: FontWeight.w700,
                      ),
                      KeyValue(
                        hasHyphen: false,
                        trailing: "",
                        leading:
                            "\$${(transactionProvider.fundRequestPreview!.netAmount.toStringAsFixed(2))}",
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const BodyMediumText(
                        text:
                            "Your deposit will be processed by midnight tonight.",
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05 * 0.5,
                      ),
                      const BodyMediumText(
                        text:
                            "Please review the details and confirm your transaction.",
                      ),
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
                      disabled: loading,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      style: CustomButtonStyle.secondary,
                      label: "CANCEL",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      onTap: _completeTransaction,
                      label: "CONFIRM",
                      loading: loading,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
