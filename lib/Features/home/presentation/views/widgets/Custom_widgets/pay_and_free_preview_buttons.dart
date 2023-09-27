import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/styles.dart';

class PayAndFreePreviewButtons extends StatelessWidget {
  const PayAndFreePreviewButtons({
    super.key,
  });
  final double height = 48, width = 150;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: CustomButton(
            text: "19.99$kEuroSympol",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
            backgroundColor: AppColors.whiteColor,
            borderRadiusLeft: const Radius.circular(kBorderRadiusValue),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: CustomButton(
              text: "Free preview",
              style: Styles.textStyle16.copyWith(
                fontFamily: kRoboto,
                fontWeight: FontWeight.normal,
                color: AppColors.whiteColor,
              ),
              backgroundColor: AppColors.orangeColor,
              borderRadiusRight: const Radius.circular(kBorderRadiusValue),
              onPressed: () {}),
        )
      ],
    );
  }
}
