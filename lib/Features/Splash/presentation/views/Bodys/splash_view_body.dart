import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../constents.dart';
import '../Custom_widgets/custom_app_bar.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("width: ${MediaQuery.of(context).size.width}\n");
    debugPrint("height: ${MediaQuery.of(context).size.height}");
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(
            image: Image.asset(
              AssetsData.logo,
              width: 100,
              height: 100,
            ),
            icon: const Icon(
              Icons.search,
              color: kSecondryColor,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (context, index) {
                return const BookCard();
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
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "${AssetsData.assetsFolder}test_image.png",
    );
  }
}
