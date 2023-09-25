import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';
import 'rating_of_best_seller_item.dart';

class PriceAndRateOfBestSellerItem extends StatelessWidget {
  const PriceAndRateOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "19.99$kEuroSympol",
          style: Styles.textStyle20,
        ),
        Spacer(),
        Icon(
          Icons.star_rounded,
          color: kColorOfStar,
        ),
        SizedBox(
          width: 6,
        ),
        RatingOfBestSellerItem(),
      ],
    );
  }
}
