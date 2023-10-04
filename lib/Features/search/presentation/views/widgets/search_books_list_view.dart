import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/book_item_view.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
            },
            child: const BookItemView(
              book: BookModel(volumeInfo: VolumeInfo()),
            ),
          ),
        );
      },
    );
  }
}
