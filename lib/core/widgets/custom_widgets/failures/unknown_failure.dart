import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/styles.dart';

class UnknownFailure extends StatelessWidget {
  const UnknownFailure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Somthing was Error",
        style: Styles.textStyle18.copyWith(
          color: AppColors.redColor,
        ),
      ),
    );
  }
}
