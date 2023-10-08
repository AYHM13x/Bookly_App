import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/models/book_model/book_model.dart';

class RatingOfBookItem extends StatelessWidget {
  const RatingOfBookItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsData.star,
          height: 13,
          width: 13,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          book.volumeInfo.averageRating != null
              ? book.volumeInfo.averageRating.toString()
              : "??",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            book.volumeInfo.ratingsCount != null
                ? "(${book.volumeInfo.ratingsCount.toString()})"
                : "(??)",
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
