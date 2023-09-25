import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';

class PriceAndRateOfBestSellerItem extends StatelessWidget {
  const PriceAndRateOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "19.99$kEuroSympol",
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: DimensionsOfScreen.dimensionsOfWidth(context, 20),
        ),
        Row(
          children: [
            const Icon(
              Icons.star_rounded,
              color: kColorOfStar,
            ),
            const Text(
              "4.5",
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "(4533)",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
