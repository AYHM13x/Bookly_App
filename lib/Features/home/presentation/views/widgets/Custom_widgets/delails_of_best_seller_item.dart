import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';
import 'price_and_rating_of_best_seller_item.dart';

class DetailsOfBestSellerItem extends StatelessWidget {
  const DetailsOfBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Harry Potter and the Goblet of Fire",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(
              fontFamily: kGTSectraFine,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "J.K. Rowling",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const PriceAndRateOfBestSellerItem(),
        ],
      ),
    );
  }
}
