import 'package:bookly_app/Features/home/presentation/view_models/newest_books_cubits/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/custom_circular_indicator.dart';
import 'package:bookly_app/core/widgets/custom_widgets/failures/failure_message.dart';
import 'package:bookly_app/core/widgets/custom_widgets/failures/unknown_failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/book_item_view.dart';

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
                    GoRouter.of(context).push(AppRouter.bookDetailsViewPath);
                  },
                  child: BookItemView(
                    book: state.newestBooks[index],
                  ),
                ),
              );
            },
          );
        } else if (state is NewestBooksLoading) {
          return const Center(
            child: CustomCircularIndicator(),
          );
        } else if (state is NewestBooksFailure) {
          return Center(
            child: FailureMessage(errMessage: state.errMessage),
          );
        } else {
          return const Center(
            child: UnknownFailure(),
          );
        }
      },
    );
  }
}
