import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constents.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../../book_details_view.dart';
import 'Custom_widgets/book_card_item.dart';

class BookCardsListView extends StatelessWidget {
  const BookCardsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 28),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
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
      ),
    );
  }
}
