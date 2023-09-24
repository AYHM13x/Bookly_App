import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../../core/utils/styles.dart';

class PriceAndRateOfBestSellerItem extends StatelessWidget {
  const PriceAndRateOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "19.99\$",
          style: Styles.priceOfBook,
        ),
        SizedBox(
          width: 0,
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              "4.5",
              style: Styles.rateOfBook,
            ),
            Text(
              " (4533)",
              style: Styles.numberOfRaterOfBook,
            ),
          ],
        ),
      ],
    );
  }
}
