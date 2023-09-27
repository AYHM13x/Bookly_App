import 'package:bookly_app/constents.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.style,
    required this.backgroundColor,
    this.borderRadiusLeft = Radius.zero,
    this.borderRadiusRight = Radius.zero,
    this.onPressed,
  });
  final String text;
  final TextStyle style;
  final Color backgroundColor;
  final Radius borderRadiusLeft;
  final Radius borderRadiusRight;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: borderRadiusLeft,
            right: borderRadiusRight,
          ),
        ),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
