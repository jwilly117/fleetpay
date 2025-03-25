import 'package:fleet_pay/models/fund_request_preview.dart';
import 'package:fleet_pay/models/new_fund_request.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/providers/transaction_provider.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionSummaryScreen extends StatefulWidget {
  final NewFundRequest newFundRequest;
  const TransactionSummaryScreen({super.key, required this.newFundRequest});

  @override
  State<TransactionSummaryScreen> createState() =>
      _TransactionSummaryScreenState();
}

class _TransactionSummaryScreenState extends State<TransactionSummaryScreen> {
  late TransactionProvider transactionProvider;
  late ContractorProvider contractorProvider;

  FundRequestPreview? fundRequestPreview;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((callback) async {
      fundRequestPreview =
          await transactionProvider.getFundPreview(widget.newFundRequest);

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    transactionProvider = Provider.of<TransactionProvider>(context);
    contractorProvider = Provider.of<ContractorProvider>(context);

    return fundRequestPreview == null
        ? const Center(child: CircularProgressIndicator())
        : Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Transaction Summary",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 40),
                        ListTile(
                          title: const Text("Applied Amount"),
                          dense: true,
                          trailing: Text(
                            "\$${fundRequestPreview!.requestedAmount.toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        ListTile(
                          title: const Text("Postage Amount"),
                          dense: true,
                          trailing: Text(
                            "\$${fundRequestPreview!.postageFee.toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        ListTile(
                          title: const Text("Fee Amount"),
                          dense: true,
                          trailing: Text(
                            "\$${fundRequestPreview!.fee.toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Net Deposit Amount"),
                          trailing: Text(
                            "\$${(fundRequestPreview!.netAmount).toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        if (fundRequestPreview!.netAmount < 1)
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Text(
                              'Net Deposit Amount must be greater than 0.',
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
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
                      const SizedBox(width: 20),
                      Expanded(
                        child: CustomButton(
                          disabled: fundRequestPreview!.netAmount < 1,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("/finalConfimation");
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
