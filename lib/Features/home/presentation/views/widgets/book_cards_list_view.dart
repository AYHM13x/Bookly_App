import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constents.dart';
import '../../../book_details_view.dart';
import 'Custom_widgets/book_card_item.dart';

class BookCardsListView extends StatelessWidget {
  const BookCardsListView({
    super.key,
    required this.horizontalPaddingBetweenItems,
  });

  final double horizontalPaddingBetweenItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPaddingBetweenItems),
          child: GestureDetector(
            onTap: () {
              debugPrint(index.toString());
              Get.to(() => const BookDetailsView(),
                  transition: Transition.fadeIn,
                  duration: kNavigationToNextView);
            },
            child: const BookCardItemView(),
          ),
        );
      },
    );
  }
}
