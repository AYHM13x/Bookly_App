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
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
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
            Text(
              "4.5",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              " (4533)",
              style: Styles.textStyle20.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
