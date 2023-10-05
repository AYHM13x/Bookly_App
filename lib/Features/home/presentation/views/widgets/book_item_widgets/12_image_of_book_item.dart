import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/assets.dart';
import '../Custom_widgets/custom_circular_and_Linear_indicator.dart';

class ImageBookItem extends StatelessWidget {
  const ImageBookItem({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kBorderRadiusValue),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(
                  child: CustomCircularIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  AssetsData.errorImage,
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
