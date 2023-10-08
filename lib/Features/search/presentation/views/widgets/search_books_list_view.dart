import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../../core/utils/app_router.dart';
import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/models/book_model/volume_info.dart';
import '../../../../home/presentation/views/widgets/book_item_widgets/_11_book_item_view.dart';

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
