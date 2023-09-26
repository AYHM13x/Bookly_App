import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.firstWidget,
    required this.secondWidget,
  });

  final Widget firstWidget;
  final Widget secondWidget;

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
          secondWidget,
        ],
      ),
    );
  }
}
