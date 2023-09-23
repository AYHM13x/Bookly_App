import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.image,
      required this.icon,
      this.onPressedOnIcon});
  final String image;
  final Icon icon;
  final Function()? onPressedOnIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: DimensionsOfScreen.dimensionsOfHeight(context, 2)),
      child: Row(
        children: [
          //title of app bar
          Image.asset(
            image,
            width: 100,
            height: 41,
          ),
          const Spacer(),
          //icon in app bar
          CustomAppBarIconButton(
            icon: icon,
            onPressed: onPressedOnIcon,
          ),
        ],
      ),
    );
  }
}
