import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';
import 'rating_of_book_item.dart';

class PriceAndRateOfBookItem extends StatelessWidget {
  const PriceAndRateOfBookItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Free",
          style: Styles.textStyle20,
        ),
        const Spacer(),
        const SizedBox(
          width: 6,
        ),
        RatingOfBookItem(
          book: book,
        ),
      ],
    );
  }
}
