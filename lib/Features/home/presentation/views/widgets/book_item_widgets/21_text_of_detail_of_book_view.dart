import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '14_rating_of_book_item.dart';

class TextOfDetailOfBookView extends StatelessWidget {
  const TextOfDetailOfBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        const RatingOfBookItem(
          book: BookModel(volumeInfo: VolumeInfo()),
        ),
      ],
    );
  }
}
