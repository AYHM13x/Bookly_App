import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../data/models/book_model/book_model.dart';
import '_14_rating_of_book_item.dart';

class TextOfDetailOfBookView extends StatelessWidget {
  const TextOfDetailOfBookView({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book.volumeInfo.title ?? "there is no title",
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors != null
                ? book.volumeInfo.authors![0]
                : "there are no authors",
            textAlign: TextAlign.center,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        RatingOfBookItem(
          book: book,
        ),
      ],
    );
  }
}
