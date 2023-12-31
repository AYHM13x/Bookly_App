import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/styles.dart';

class UnknownFailureWidget extends StatelessWidget {
  const UnknownFailureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Somthing was Error",
        style: Styles.textStyle20.copyWith(
          color: AppColors.redColor,
        ),
      ),
    );
  }
}
