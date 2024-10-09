import 'package:ajuda/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.style,
      this.icon});
  final String text;
  final VoidCallback onPressed;
  final TextStyle? style;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            if (icon != null) icon!,
            const SizedBox(width: 14),
            Text(
              text,
              style: style ??
                  const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
            ),
          ],
        ));
  }
}
