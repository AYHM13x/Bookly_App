import 'package:bookly_app/constents.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class ImageOfSearchBookItem extends StatelessWidget {
  const ImageOfSearchBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadiusValue),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
