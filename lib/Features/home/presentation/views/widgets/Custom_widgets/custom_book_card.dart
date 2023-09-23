import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("${AssetsData.assetsFolder}test_image.png"),
          ),
        ),
      ),
    );
  }
}
