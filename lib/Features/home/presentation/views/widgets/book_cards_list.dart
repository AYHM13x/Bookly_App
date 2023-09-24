import 'package:flutter/material.dart';

import '../../../../../core/utils/dimensions_of_screen.dart';
import 'Custom_widgets/custom_book_card.dart';

class BookCardsList extends StatelessWidget {
  const BookCardsList({
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
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                debugPrint(index.toString());
              },
              child: const CustomBookCard(),
            ),
          );
        },
      ),
    );
  }
}
