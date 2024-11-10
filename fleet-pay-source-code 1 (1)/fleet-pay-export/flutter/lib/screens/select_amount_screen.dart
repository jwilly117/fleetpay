import 'package:fleet_pay/enums/select_amount.dart';
import 'package:fleet_pay/models/new_fund_request.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/providers/transaction_provider.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectAmountScreen extends StatefulWidget {
  const SelectAmountScreen({super.key});

  @override
  State<SelectAmountScreen> createState() => _SelectAmountScreenState();
}

class _SelectAmountScreenState extends State<SelectAmountScreen> {
  SelectAmount selectAmount = SelectAmount.All;
  final TextEditingController _textEditingController = TextEditingController();
  late ContractorProvider contractorProvider;
  late TransactionProvider transactionProvider;

  final GlobalKey<FormState> _formKey = GlobalKey();

  NewFundRequest fundRequest = NewFundRequest(
    amount: 0,
    contractorId: "",
  );

  requestFund() {
    if (_formKey.currentState!.validate()) {
      fundRequest.amount = double.parse(_textEditingController.text);

      transactionProvider.setFundRequest(fundRequest);
      NavigationService.homeNavigator.currentState?.pushNamed(
        "/transactionSummary",
        arguments: fundRequest,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((callback) async {
      _textEditingController.text =
          contractorProvider.summary!.availableFund.toString();
      fundRequest.amount = contractorProvider.summary!.availableFund;
      fundRequest.contractorId = contractorProvider.contractor!.id;
      setState(() {
        checkValid();
      });
    });
  }

  bool isValid = false;

  String? validateAmount(String? value) {
    if (value == null || value == "") {
      return "Please enter an amount";
    }
    final amount = num.tryParse(value);
    if (amount == null) {
      return "Please enter a valid amount";
    }
    if (amount > contractorProvider.summary!.availableFund) {
      return "Amount exceeds withdrawal limit";
    }
    return null;
  }

  void checkValid() {
    setState(() {
      isValid = validateAmount(_textEditingController.text) == null;
    });
  }

  @override
  Widget build(BuildContext context) {
    contractorProvider = Provider.of<ContractorProvider>(context);
    transactionProvider = Provider.of<TransactionProvider>(context);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Enter the amount you want to request",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        autofocus: true,
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          fillColor: Theme.of(context).focusColor,
                          labelText: "Amount",
                          prefixText: "\$ ",
                          suffixIcon: IconButton(
                            onPressed: () {
                              _textEditingController.clear();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ),
                        onChanged: (value) {
                          checkValid();
                        },
                        validator: validateAmount,
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            const TextSpan(
                              text: "You have ",
                            ),
                            TextSpan(
                              text:
                                  "\$${contractorProvider.summary!.availableFund}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Theme.of(context).colorScheme.secondary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _textEditingController.text =
                                      contractorProvider.summary!.availableFund
                                          .toString();
                                  checkValid();
                                },
                            ),
                            const TextSpan(text: " available"),
                          ],
                        ),
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      label: "CANCEL",
                      style: CustomButtonStyle.secondary,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      onTap: requestFund,
                      disabled: !isValid,
                      label: "CONTINUE",
                      style: CustomButtonStyle.primary,
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
