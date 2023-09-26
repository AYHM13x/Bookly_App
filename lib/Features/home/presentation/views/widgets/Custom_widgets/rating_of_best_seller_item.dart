import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';

class RatingOfBestSellerItem extends StatelessWidget {
  const RatingOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: kYellowColor,
        ),
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
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
