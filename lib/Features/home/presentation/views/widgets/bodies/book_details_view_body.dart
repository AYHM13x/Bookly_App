import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/dimensions_of_screen.dart';
import '../Custom_widgets/custom_book_detail_app_bar.dart';
import '../book_item_widgets/23_detail_book_section_in_detail_book_view.dart';
import '../book_item_widgets/24_similar_book_section.dart';

class BookDetailsViewBodyOldVersion extends StatelessWidget {
  const BookDetailsViewBodyOldVersion({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        bottom: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //AppBar
          const CustomBookDetailAppBar(),
          //Book Card
           DetailBookSectionInDetailBookView(book: book),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 6.85),
          ),
          const SimilarBooksSection()
        ],
      ),
    );
  }
}

//didn't work with me correctly
class BookDetailsViewBodyNewVersion extends StatelessWidget {
  const BookDetailsViewBodyNewVersion({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //AppBar
              const CustomBookDetailAppBar(),
              //Book Card
              DetailBookSectionInDetailBookView(
                book: book,
              ),
              // const Expanded(
              //   child: SizedBox(),
              // ),
            ],
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
        ),
        const SliverToBoxAdapter(
          child: SimilarBooksSection(),
        )
      ],
    );
  }
}

class BookDetailsViewBodySamyVersion extends StatelessWidget {
  const BookDetailsViewBodySamyVersion({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              //AppBar
              const CustomBookDetailAppBar(),
              //Book Card Section
              DetailBookSectionInDetailBookView(book: book),
              const Expanded(
                child: SizedBox(),
              ),
              const SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
