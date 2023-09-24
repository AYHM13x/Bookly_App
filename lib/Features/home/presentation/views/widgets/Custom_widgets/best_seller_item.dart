import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import 'delails_of_best_seller_item.dart';
import 'image_of_best_seller_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    //debugPrint(DimensionsOfScreen.dimensionsOfWidth(context, 4).toString());
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ImageOfBestSellerItem(),
        SizedBox(
          width: DimensionsOfScreen.dimensionsOfWidth(context, 4),
        ),
        const DetailsOfBestSellerItem()
      ],
    );
  }
}
