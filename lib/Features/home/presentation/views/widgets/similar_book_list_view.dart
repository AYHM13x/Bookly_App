import 'package:bookly_app/Features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/custom_circular_and_Linear_indicator.dart';
import 'package:bookly_app/core/widgets/custom_widgets/failures/failure_message_widget.dart';
import 'package:bookly_app/core/widgets/custom_widgets/failures/unknown_failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'book_item_widgets/10_book_card_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                String? imageUrl =
                    state.books[index].volumeInfo.imageLinks?.thumbnail;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.bookDetailsViewPath,
                          extra: state.books[index]);
                    },
                    child: BookCardItemView(
                      imageUrl: imageUrl,
                    ),
                  ),
                );
              },
            );
          } else if (state is SimilarBooksLoading) {
            return const CustomIndicator(
              indeicatorType: 1,
            );
          } else if (state is SimilarBooksFailure) {
            return FailureMessageWidget(errMessage: state.errMessage);
          } else {
            return const UnknownFailureWidget();
          }
        },
      ),
    );
  }
}
