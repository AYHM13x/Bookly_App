import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../constents.dart';
import '../Custom_widgets/custom_app_bar.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("width: ${MediaQuery.of(context).size.width}");
    debugPrint("height: ${MediaQuery.of(context).size.height}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Read Book for Free",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
