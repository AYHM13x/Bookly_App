import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../data/models/book_model/book_model.dart';
import '_10_book_card_item.dart';
import '_12_delails_of_book_item.dart';

class BookItemView extends StatelessWidget {
  const BookItemView({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 105,
            child: BookCardItemView(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
            ),
          ),
          SizedBox(
            width: DimensionsOfScreen.dimensionsOfWidth(context, 5),
          ),
          DetailsBookItem(
            book: book,
          ),
        ],
      ),
    );
  }
}
