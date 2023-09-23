import 'package:flutter/material.dart';

class CustomAppBarIconButton extends StatelessWidget {
  const CustomAppBarIconButton({super.key, required this.icon, this.onPressed});
  final Icon icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      iconSize: 30,
    );
  }
}
