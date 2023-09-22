import 'package:flutter/material.dart';

import 'custom_app_bar_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.image, required this.icon, this.onPressed});
  final Image image;
  final Icon icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //title of app bar
        image,
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
        ),
        //icon in app bar
        CustomAppBarIconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
