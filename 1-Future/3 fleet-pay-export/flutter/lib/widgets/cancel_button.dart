import 'package:fleet_pay/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final void Function()? callback;
  const CancelButton({
    super.key,
    this.title,
    this.backgroundColor,
    this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: callback ??
          () {
            Navigator.pop(context);
          },
      label: title ?? "CANCEL",
    );
  }
}
