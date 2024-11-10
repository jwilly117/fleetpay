import 'package:flutter/material.dart';

class KeyValue extends StatelessWidget {
  final String leading, trailing;
  final FontWeight? leadingwt, trailingWt;
  final TextStyle? leadingStyle, trailingStyle;
  final bool hasHyphen;
  const KeyValue({
    super.key,
    required this.leading,
    required this.trailing,
    this.leadingwt,
    this.trailingWt,
    this.leadingStyle,
    this.trailingStyle,
    this.hasHyphen = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leading,
          style: leadingStyle ??
              Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: leadingwt ?? FontWeight.w500,
                    color: const Color(
                      0xff333333,
                    ),
                  ),
        ),
        if (hasHyphen) const Text(" : "),
        Text(
          trailing,
          style: trailingStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 16,
                    fontWeight: trailingWt,
                    color: const Color(
                      0xff333333,
                    ),
                  ),
        ),
      ],
    );
  }
}
