import 'package:fleet_pay/models/transaction.dart';
import 'package:fleet_pay/models/transaction_status.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentCard extends StatelessWidget {
  final Transaction transaction;
  final void Function() onPressed;

  const PaymentCard({
    super.key,
    required this.transaction,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(
            color: Color(0xff003366),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(DateFormat("yyyy-MM-dd").format(transaction.createdAt),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16,
                          )),
                  const Spacer(),
                  getIconByStatus(transaction.status),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    transaction.status.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16.0,
                          color: getColorByStatus(transaction.status),
                        ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '\$${transaction.netAmount.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      transaction.id.substring(0, 10),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    'View Details',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getColorByStatus(TransactionStatus status) {
    switch (status) {
      case TransactionStatus.PENDING:
        return const Color(0xffF9A825);
      case TransactionStatus.APPROVED:
        return const Color(0xff388E3C);
      case TransactionStatus.DENIED:
        return const Color(0xffD32F2F);
      default:
        return Colors.black;
    }
  }

  Icon getIconByStatus(TransactionStatus status) {
    switch (status) {
      case TransactionStatus.PENDING:
        return const Icon(
          Icons.query_builder,
          color: Color(0xffF9A825),
        );
      case TransactionStatus.APPROVED:
        return const Icon(
          Icons.check_circle_outline,
          color: Color(0xff388E3C),
        );
      case TransactionStatus.DENIED:
        return const Icon(
          Icons.not_interested_sharp,
          color: Color(0xffD32F2F),
        );
      default:
        return const Icon(
          Icons.unfold_less_rounded,
        );
    }
  }
}
