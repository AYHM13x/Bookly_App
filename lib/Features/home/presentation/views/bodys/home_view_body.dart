import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constents.dart';
import '../../../../../core/utils/assets.dart';
import '../Custom_widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppBar(
            image: AssetsData.logo,
            icon: Icon(
              Icons.search,
              color: kSecondryColor,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return GestureDetector(child: const BookCard());
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Best Seller",
            style: TextStyle(
              color: kSecondryColor,
              fontSize: 28,
            ),
          )
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "${AssetsData.assetsFolder}test_image.png",
    );
  }
}
