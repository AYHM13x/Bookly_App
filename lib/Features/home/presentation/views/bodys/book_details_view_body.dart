import 'package:flutter/material.dart';

import '../../../../../core/utils/dimensions_of_screen.dart';
import '../widgets/Custom_widgets/custom_book_detail_app_bar.dart';
import '../widgets/Custom_widgets/detail_book_section.dart';
import '../widgets/Custom_widgets/similar_book_section.dart';

class BookDetailsViewBodyOldVersion extends StatelessWidget {
  const BookDetailsViewBodyOldVersion({super.key});

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
          const SizedBox(
            height: 33,
          ),
          //Book Card
          const DetalBookSection(),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 6.85),
          ),
          const DetalBookSection()
        ],
      ),
    );
  }
}

//didn't work with me correctly
class BookDetailsViewBodyNewVersion extends StatelessWidget {
  const BookDetailsViewBodyNewVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //AppBar
              CustomBookDetailAppBar(),
              SizedBox(
                height: 33,
              ),
              //Book Card
              DetalBookSection(),
              // const Expanded(
              //   child: SizedBox(),
              // ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
        ),
        SliverToBoxAdapter(
          child: SimilarBookSection(),
        )
      ],
    );
  }
}

class BookDetailsViewBodySamyVersion extends StatelessWidget {
  const BookDetailsViewBodySamyVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //AppBar
              CustomBookDetailAppBar(),
              SizedBox(
                height: 33,
              ),
              //Book Card
              DetalBookSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBookSection(),
            ],
          ),
        ),
      ],
    );
  }
}
