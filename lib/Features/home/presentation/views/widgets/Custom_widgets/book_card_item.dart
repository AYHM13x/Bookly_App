//import 'package:cached_network_image/cached_network_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/custom_circular_indicator.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/widgets/custom_widgets/failures/failure_message.dart';

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
              child: CustomCircularIndicator(),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.error,
                  color: AppColors.redColor,
                  size: 64,
                ),
                FailureMessage(
                  errMessage: "image unloaded",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
