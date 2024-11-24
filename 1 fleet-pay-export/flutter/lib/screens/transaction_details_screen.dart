import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/models/transaction_remark.dart';
import 'package:fleet_pay/widgets/timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionDetailsScreen extends StatefulWidget {
  final Transaction transaction;
  const TransactionDetailsScreen({super.key, required this.transaction});

  @override
  State<TransactionDetailsScreen> createState() =>
      _TransactionDetailsScreenState();
}

class _TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Details"),
      ),
      body: Padding(
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
                      ListTile(
                        title: const Text(
                          "Transaction Date",
                        ),
                        subtitle: Text(
                          DateFormat("yyyy-MM-dd").format(
                            widget.transaction.createdAt,
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text("Transaction Status"),
                        subtitle: Text(
                          widget.transaction.status.name,
                        ),
                      ),
                      ListTile(
                        title: const Text("Transaction ID"),
                        subtitle: Text(
                          widget.transaction.id,
                        ),
                      ),
                      ListTile(
                        title: const Text("Recipient Information"),
                        subtitle: Text(
                          widget.transaction.company?.name ?? "",
                        ),
                      ),
                      ExpansionTile(
                        minTileHeight: 0,
                        shape: const Border(),
                        title: const Text(
                          "Transaction Summary",
                        ),
                        children: [
                          ListTile(
                            title: const Text("Applied Amount"),
                            dense: true,
                            trailing: Text(
                              "\$${widget.transaction.requestedAmount.toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          ListTile(
                            title: const Text("Postage Amount"),
                            dense: true,
                            trailing: Text(
                              "\$${widget.transaction.postageFee.toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          ListTile(
                            title: const Text("Fee Amount"),
                            dense: true,
                            trailing: Text(
                              "\$${widget.transaction.fee.toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          const Divider(),
                          ListTile(
                            title: const Text("Net Deposit Amount"),
                            trailing: Text(
                              "\$${(widget.transaction.netAmount).toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      for (TransactionRemark transactionRemark
                          in widget.transaction.remarks)
                        MyTimeLineTile(
                          isFirst: transactionRemark.id ==
                              widget.transaction.remarks.first.id,
                          isLast: transactionRemark.id ==
                              widget.transaction.remarks.last.id,
                          remark: transactionRemark,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
