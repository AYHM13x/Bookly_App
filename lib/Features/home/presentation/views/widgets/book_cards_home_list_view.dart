import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../view_models/all_books_cubits/all_books_cubit.dart';
import 'Custom_widgets/custom_indicator.dart';
import '../../../../../core/widgets/custom_widgets/failures/failure_message_widget.dart';
import '../../../../../core/widgets/custom_widgets/failures/unknown_failure_widget.dart';
import 'book_item_widgets/_10_book_card_item.dart';

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
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.bookDetailsViewPath,
                          extra: state.books[index]);
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
            return const CustomIndicator(
              indeicatorType: 1,
            );
          } else if (state is AllBooksFailure) {
            return FailureMessageWidget(
              errMessage: state.errMessage,
            );
          } else {
            return const UnknownFailureWidget();
          }
        },
      ),
    );
  }
}
