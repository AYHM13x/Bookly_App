import 'package:bookly_app/Features/home/presentation/views/widgets/book_cards_list_view.dart';
import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../widgets/Custom_widgets/book_card_item.dart';
import '../widgets/Custom_widgets/custom_book_detail_app_bar.dart';
import '../widgets/Custom_widgets/pay_and_free_preview_buttons.dart';
import '../widgets/Custom_widgets/text_of_detail_of_book_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width35 = DimensionsOfScreen.dimensionsOfWidth(context, 35);
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        bottom: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomBookDetailAppBar(),
          const SizedBox(
            height: 33,
          ),
          SizedBox(
            width: width35,
            child: const BookCardItemView(),
          ),
          const SizedBox(
            height: 45,
          ),
          const TextOfDetailOfBookView(),
          const SizedBox(
            height: 37,
          ),
          const PayAndFreePreviewButtons(),
          const SizedBox(
            height: 51,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
                color: kWhiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 112,
            child: BookCardsListView(
              horizontalPaddingBetweenItems: 10,
            ),
          ),
        ],
      ),
    );
  }
}
