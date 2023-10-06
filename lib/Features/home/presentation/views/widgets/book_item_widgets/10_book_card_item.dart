//import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/custom_circular_and_Linear_indicator.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';

class BookCardItemView extends StatelessWidget {
  const BookCardItemView({
    super.key,
    this.imageUrl,
  });

  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kBorderRadiusValue),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Image.network(
          imageUrl ?? "",
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(
              child: CustomIndicator(),
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
    );
  }
}
