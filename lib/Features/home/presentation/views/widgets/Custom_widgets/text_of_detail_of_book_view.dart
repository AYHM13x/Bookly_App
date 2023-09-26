import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../../core/utils/styles.dart';
import 'rating_of_best_seller_item.dart';

class TextOfDetailOfBookView extends StatelessWidget {
  const TextOfDetailOfBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 1),
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: kGreyColor,
          ),
        ),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 2),
        ),
        const RatingOfBestSellerItem(),
      ],
    );
  }
}