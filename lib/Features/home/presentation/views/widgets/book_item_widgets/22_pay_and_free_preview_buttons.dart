import 'package:bookly_app/core/widgets/custom_widgets/show_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/app_colors.dart';
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
            onPressed: () async {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free Preview",
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
              String urlNotFound = "";
              final Uri url =
                  Uri.parse(book.accessInfo?.pdf?.acsTokenLink ?? urlNotFound);
              debugPrint(url.toString());
              if (url.toString() != urlNotFound) {
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              } else {
                showSnackBar(context, "Free Preview is not Available");
              }
            },
          ),
        )
      ],
    );
  }
}
