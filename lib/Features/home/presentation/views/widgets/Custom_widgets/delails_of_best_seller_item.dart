import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'price_and_rate_of_best_seller_item.dart';

class DetailsOfBestSellerItem extends StatelessWidget {
  const DetailsOfBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DimensionsOfScreen.dimensionsOfWidth(context, 66),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            isThreeLine: true,
            title: const Text(
              "Harry Potter and the Goblet of Fire",
              style: Styles.textStyle20,
            ),
            subtitle: Text(
              "J.K. Rowling",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const PriceAndRateOfBestSellerItem(),
        ],
      ),
    );
  }
}
