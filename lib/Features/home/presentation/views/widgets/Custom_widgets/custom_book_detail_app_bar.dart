import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constents.dart';
import 'custom_icon_button.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height2 = DimensionsOfScreen.dimensionsOfHeight(context, 2);
    return Padding(
      padding: EdgeInsets.only(
        bottom: height2,
        top: height2 * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            icon: const Icon(
              Icons.close,
              color: kWhiteColor,
            ),
            onPressed: () {
              //Get.back();
              GoRouter.of(context).pop();
            },
          ),
          CustomIconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}