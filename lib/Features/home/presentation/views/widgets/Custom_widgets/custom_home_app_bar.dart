import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import 'custom_icon_button.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          top: DimensionsOfScreen.dimensionsOfHeight(context, 4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //title of app bar
          Image.asset(
            image,
            height: 41,
            width: 100,
          ),
          //icon in app bar
          const CustomIconButton(
            icon: Icon(
              Icons.search,
              color: kWhiteColor,
            ),
          )
        ],
      ),
    );
  }
}
