import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/styles.dart';
import 'price_and_rating_of_book_item.dart';

class DetailsBookItem extends StatelessWidget {
  const DetailsBookItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.volumeInfo.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(
              fontFamily: kGTSectraFine,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              book.volumeInfo.authors != null
                  ? book.volumeInfo.authors![0]
                  : "there are no authors Avalible",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          PriceAndRateOfBookItem(
            book: book,
          ),
        ],
      ),
    );
  }
}
