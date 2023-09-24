import 'package:flutter/material.dart';

import '../../../../../constents.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../core/utils/styles.dart';
import '../widgets/Custom_widgets/best_seller_item.dart';
import '../widgets/Custom_widgets/custom_app_bar.dart';
import '../widgets/book_cards_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            image: AssetsData.logo,
            icon: Icon(
              Icons.search,
              color: kSecondryColor,
            ),
          ),
          const BookCardsList(),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 7),
          ),
          const Text(
            "Best Seller",
            style: Styles.titleMeduim,
          ),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          ),
          const BestSellerItem(),
        ],
      ),
    );
  }
}
