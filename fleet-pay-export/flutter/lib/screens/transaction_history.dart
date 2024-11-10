import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/providers/contractor_provider.dart';
import 'package:fleet_pay/providers/transaction_provider.dart';
import 'package:fleet_pay/screens/transaction_details_screen.dart';
import 'package:fleet_pay/services/navigation.dart';
import 'package:fleet_pay/widgets/payment_history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  late TransactionProvider transactionProvider;
  late ContractorProvider contractorProvider;

  List<Transaction>? transactions;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((callback) async {
      String contractorId = contractorProvider.contractor!.id;
      transactions =
          await transactionProvider.getContractorTransactions(contractorId) ??
              [];
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    transactionProvider = Provider.of<TransactionProvider>(context);
    contractorProvider = Provider.of<ContractorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction History"),
      ),
      body: transactions == null
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: transactions!.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/empty.svg",
                            height: 200,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "No transaction history available.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (Transaction transaction in transactions!) ...[
                              PaymentCard(
                                transaction: transaction,
                                onPressed: () {
                                  NavigationService.rootNavigator.currentState!
                                      .push(
                                    getPageRoute(
                                      TransactionDetailsScreen(
                                        transaction: transaction,
                                      ),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 10),
                            ]
                          ],
                        ),
                      ),
                    ),
            ),
    );
  }
}
