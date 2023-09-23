import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 30),
      child: AspectRatio(
        aspectRatio: 11 / 15,
        child: Container(
          // width: DimensionsOfScreen.dimensionsOfWidth(context, 36),
          // height: DimensionsOfScreen.dimensionsOfHeight(context, 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("${AssetsData.assetsFolder}test_image.png"),
            ),
          ),
          //child: const BookCard(),
        ),
      ),
    );
  }
}
