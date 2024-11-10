import 'package:flutter/material.dart';

class BodyLargeText extends StatelessWidget {
  final String text; //for now it is a constant image in all screens
  final TextStyle? style;

  const BodyLargeText({super.key, required this.text, this.style});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge?.merge(style),
      textAlign: TextAlign.center,
    );
  }
}

class BodyMediumText extends StatelessWidget {
  final String text; //for now it is a constant image in all screens
  final TextStyle? style;

  const BodyMediumText({super.key, required this.text, this.style});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.merge(style),
      textAlign: TextAlign.center,
    );
  }
}
