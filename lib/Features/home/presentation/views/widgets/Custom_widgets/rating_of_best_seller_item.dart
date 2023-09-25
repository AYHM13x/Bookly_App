import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class RatingOfBestSellerItem extends StatelessWidget {
  const RatingOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "4.5",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "(4533)",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
