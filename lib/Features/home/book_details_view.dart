import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/dimensions_of_screen.dart';
import '../../core/utils/service_locater.dart';
import 'data/repos/home_repo_impl.dart';
import 'presentation/views/widgets/bodies/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.book.volumeInfo.categories?[0] ??
            widget.book.volumeInfo.title!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: DimensionsOfScreen.dimensionsOfWidth(context, 4),
            left: DimensionsOfScreen.dimensionsOfWidth(context, 4),
          ),
          child: BookDetailsViewBodyNewVersion(
            book: widget.book,
          ),
        ),
      ),
    );
  }
}

//  padding: EdgeInsets.only(
//           bottom: DimensionsOfScreen.dimensionsOfHeight(context, 0),
//           top: DimensionsOfScreen.dimensionsOfHeight(context, 2),
//           right: DimensionsOfScreen.dimensionsOfWidth(context, 5),
//           left: DimensionsOfScreen.dimensionsOfWidth(context, 5),
//         ),
