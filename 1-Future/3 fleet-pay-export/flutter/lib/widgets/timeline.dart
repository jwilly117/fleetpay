import 'package:fleet_pay/models/transaction_remark.dart';
import 'package:fleet_pay/models/transaction_status.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final TransactionRemark remark;

  const MyTimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.remark});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        endChild: TimelineCard(
          remark: remark,
        ),
        beforeLineStyle: LineStyle(
          color: getColorByStatus(remark.status!),
        ),
        indicatorStyle: IndicatorStyle(
          width: 30,
          color: getColorByStatus(remark.status!),
          iconStyle: IconStyle(
              iconData: getIconByStatus(remark.status!), color: Colors.white),
        ),
      ),
    );
  }
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

IconData getIconByStatus(TransactionStatus status) {
  switch (status) {
    case TransactionStatus.PENDING:
      return Icons.sync;
    case TransactionStatus.APPROVED:
      return Icons.done;
    case TransactionStatus.DENIED:
      return Icons.close;
    default:
      return Icons.sync;
  }
}

class TimelineCard extends StatelessWidget {
  const TimelineCard({
    super.key,
    required this.remark,
  });

  final TransactionRemark remark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "${DateFormat("yyyy-MM-dd").format(
                  remark.createdAt,
                )} - ${DateFormat("hh:mm a").format(
                  remark.createdAt,
                )} ",
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.blueGrey,
                  fontSize: 12,
                ),
              ),
              Text(
                remark.user!.name,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                remark.status!.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                remark.remarks,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
