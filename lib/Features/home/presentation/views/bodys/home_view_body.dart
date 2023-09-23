import 'package:flutter/material.dart';

import '../../../../../constents.dart';
import '../../../../../core/utils/assets.dart';
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
        children: [
          const CustomAppBar(
            image: AssetsData.logo,
            icon: Icon(
              Icons.search,
              color: kSecondryColor,
            ),
          ),
          const BookCardsList(),
          const SizedBox(
            height: 32,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Best Seller",
              style: TextStyle(
                color: kSecondryColor,
                fontSize: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
