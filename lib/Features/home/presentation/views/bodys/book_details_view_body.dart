import 'package:bookly_app/Features/home/presentation/views/widgets/book_cards_list_view.dart';

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions_of_screen.dart';
import '../../../../../core/utils/styles.dart';
import '../widgets/Custom_widgets/book_card_item.dart';
import '../widgets/Custom_widgets/custom_book_detail_app_bar.dart';
import '../widgets/Custom_widgets/pay_and_free_preview_buttons.dart';
import '../widgets/Custom_widgets/text_of_detail_of_book_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width40 = DimensionsOfScreen.dimensionsOfWidth(context, 40);
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
          SizedBox(
            width: width40,
            child: const BookCardItemView(),
          ),
          const SizedBox(
            height: 45,
          ),
          //Text of detail in book view
          const TextOfDetailOfBookView(),
          const SizedBox(
            height: 37,
          ),
          //Pay and Preview buttons
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
                color: AppColors.whiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          //list of "You can also like"
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
