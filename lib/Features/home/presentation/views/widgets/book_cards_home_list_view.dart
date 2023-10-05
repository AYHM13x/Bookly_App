import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../view_models/all_books_cubits/all_books_cubit.dart';
import 'Custom_widgets/custom_circular_and_Linear_indicator.dart';
import '../../../../../core/widgets/custom_widgets/failures/failure_message_view.dart';
import '../../../../../core/widgets/custom_widgets/failures/unknown_failure_view.dart';
import 'book_item_widgets/10_book_card_item.dart';

class BookCardsHomeListView extends StatelessWidget {
  const BookCardsHomeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 33.33333333),
      child: BlocBuilder<AllBooksCubit, AllBooksState>(
        builder: (context, state) {
          if (state is AllBooksSuccess) {
            debugPrint(state.books.length.toString());
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
                    },
                    child: BookCardItemView(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            );
          } else if (state is AllBooksLoading) {
            return const CustomLinearProgressIndicator();
          } else if (state is AllBooksFailure) {
            return FailureMessageView(
              errMessage: state.errMessage,
            );
          } else {
            return const UnknownFailureView();
          }
        },
      ),
    );
  }
}
