import 'package:flutter/material.dart';

import '../../../../../constents.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../core/utils/styles.dart';
import '../widgets/Custom_widgets/custom_app_bar.dart';
import '../widgets/best_seller_list.dart';
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
            height: DimensionsOfScreen.dimensionsOfHeight(context, 5),
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          const BestSellerList(),
        ],
      ),
    );
  }
}
