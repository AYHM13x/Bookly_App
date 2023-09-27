import 'package:flutter/material.dart';

import '../../../../../../constents.dart';
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
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kBorderRadiusValue),
                    bottomLeft: Radius.circular(kBorderRadiusValue))),
            child: Text(
              "19.99$kEuroSympol",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: kOrangeColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(kBorderRadiusValue),
                    bottomRight: Radius.circular(kBorderRadiusValue))),
            child: Text(
              "Free preview",
              style: Styles.textStyle16.copyWith(
                fontFamily: kRoboto,
                fontWeight: FontWeight.normal,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
