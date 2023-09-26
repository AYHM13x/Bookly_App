import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.firstWidget,
      required this.icon,
      this.onPressedOnIcon});

  final Widget firstWidget;
  final Icon icon;
  final Function()? onPressedOnIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          top: DimensionsOfScreen.dimensionsOfHeight(context, 4)),
      child: Row(
        children: [
          //title of app bar
          firstWidget,
          const Spacer(),
          //icon in app bar
          CustomIconButton(
            icon: icon,
            onPressed: onPressedOnIcon,
          ),
        ],
      ),
    );
  }
}
