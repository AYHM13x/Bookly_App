import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class PriceAndRateOfBestSellerItem extends StatelessWidget {
  const PriceAndRateOfBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "19.99\$",
          style: Styles.textStyle20,
        ),
        const SizedBox(
          width: 0,
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
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
