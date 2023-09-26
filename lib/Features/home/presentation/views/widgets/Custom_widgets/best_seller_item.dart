import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import 'delails_of_best_seller_item.dart';
import 'image_of_best_seller_item.dart';

class BestSellerItemView extends StatelessWidget {
  const BestSellerItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const ImageOfBestSellerItem(),
          SizedBox(
            width: DimensionsOfScreen.dimensionsOfWidth(context, 5),
          ),
          const DetailsOfBestSellerItem(),
        ],
      ),
    );
  }
}
