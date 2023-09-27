import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              // Get.to(() => const BookDetailsView(),
              //     transition: Transition.fadeIn,
              //     duration: kNavigationToNextView);
              GoRouter.of(context).push(AppRouter.kBookDetailsViewPath);
            },
            child: const BookCardItemView(),
          ),
        );
      },
    );
  }
}
