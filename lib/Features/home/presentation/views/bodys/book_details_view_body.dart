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
    final double paddingOfHeight5 =
        DimensionsOfScreen.dimensionsOfHeight(context, 5);
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: paddingOfHeight5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomBookDetailAppBar(),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          ),
          SizedBox(
            width: DimensionsOfScreen.dimensionsOfWidth(context, 35),
            child: const BookCardItemView(),
          ),
          SizedBox(
            height: paddingOfHeight5,
          ),
          const TextOfDetailOfBookView(),
          SizedBox(
            height: paddingOfHeight5,
          ),
          const PayAndFreePreviewButtons(),
          SizedBox(
            height: paddingOfHeight5,
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
          SizedBox(
            height: paddingOfHeight5,
          ),
          const SizedBox(
            height: 125,
            child: BookCardsListView(
              horizontalPaddingBetweenItems: 10,
            ),
          ),
        ],
      ),
    );
  }
}
