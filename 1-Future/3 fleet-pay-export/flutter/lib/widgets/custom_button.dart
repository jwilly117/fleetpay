import 'package:fleet_pay/constants/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final CustomButtonStyle style;
  final bool disabled;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.label,
    this.style = CustomButtonStyle.primary,
    this.width,
    this.loading = false,
    this.icon,
    this.disabled = false,
    Color? backgroundColor,
  }) : backgroundColor = backgroundColor ??
            (style == CustomButtonStyle.secondary ? Colors.white : primary);

  final Color backgroundColor;
  final double? width;
  final IconData? icon;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (loading || disabled) ? null : onTap,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        disabledBackgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: backgroundColor),
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(width ?? double.infinity, 40),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
        foregroundColor: backgroundColor.computeLuminance() < 0.5
            ? Colors.white
            : Colors.black,
      ),
      child: loading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 1.5,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon),
                  const SizedBox(width: 8),
                ],
                Text(label),
              ],
            ),
    );
  }
}

enum CustomButtonStyle {
  primary,
  secondary,
}
