import 'package:bookly_app/Features/search/presentation/views/widgets/custom_widgets/delails_of_best_seller_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import 'image_of_search_book_item.dart';

class SearchBookItemView extends StatelessWidget {
  const SearchBookItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const ImageOfSearchBookItem(),
          SizedBox(
            width: DimensionsOfScreen.dimensionsOfWidth(context, 5),
          ),
          const DetailsOfSearchBookItem(),
        ],
      ),
    );
  }
}
