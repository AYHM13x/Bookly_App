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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            isThreeLine: true,
            title: Text(
              "Title of the Book first book",
              style: Styles.titleOfBook24w400,
            ),
            subtitle: Text(
              "Auther of the Book first book",
              style: Styles.textStyle14w500grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          PriceAndRateOfBestSellerItem(),
        ],
      ),
    );
  }
}
