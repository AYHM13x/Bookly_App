import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/function/custom_launch_url.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_widgets/custom_button.dart';
import '../../../../data/models/book_model/book_model.dart';

class PayAndFreePreviewButtons extends StatelessWidget {
  const PayAndFreePreviewButtons({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: "Free",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
            backgroundColor: AppColors.whiteColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kBorderRadiusValue),
                bottomLeft: Radius.circular(kBorderRadiusValue)),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: textOfPreview(book),
            style: Styles.textStyle16.copyWith(
              fontFamily: kRoboto,
              fontWeight: FontWeight.normal,
              color: AppColors.whiteColor,
            ),
            backgroundColor: AppColors.orangeColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(kBorderRadiusValue),
              bottomRight: Radius.circular(kBorderRadiusValue),
            ),
            onPressed: () async {
              await customLaunchUrl(context, book);
            },
          ),
        )
      ],
    );
  }

  String textOfPreview(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return "Unavailable";
    } else {
      return "Free Preview";
    }
  }
}
