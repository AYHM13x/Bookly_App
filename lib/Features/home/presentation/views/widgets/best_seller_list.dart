import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/dimensions_of_screen.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 49.236),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                debugPrint(index.toString());
              },
              child: const BestSellerItem(),
            ),
          );
        },
      ),
    );
  }
}
