import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../core/widgets/custom_widgets/failures/failure_message_widget.dart';
import '../../../../../core/widgets/custom_widgets/failures/unknown_failure_widget.dart';
import '../../view_models/newest_books_cubits/newest_books_cubit.dart';
import 'Custom_widgets/custom_indicator.dart';
import 'book_item_widgets/_11_book_item_view.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.newestBooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.bookDetailsViewPath,
                        extra: state.newestBooks[index]);
                  },
                  child: BookItemView(
                    book: state.newestBooks[index],
                  ),
                ),
              );
            },
          );
        } else if (state is NewestBooksLoading) {
          return SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 45),
            child: const Center(
              child: CustomIndicator(),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SizedBox(
              height: DimensionsOfScreen.dimensionsOfHeight(context, 45),
              child: FailureMessageWidget(errMessage: state.errMessage));
        } else {
          return const Center(
            child: UnknownFailureWidget(),
          );
        }
      },
    );
  }
}
