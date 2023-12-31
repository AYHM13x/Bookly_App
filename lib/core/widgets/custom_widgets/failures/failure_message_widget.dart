import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/styles.dart';

class FailureMessageWidget extends StatelessWidget {
  const FailureMessageWidget({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        textAlign: TextAlign.center,
        style: Styles.textStyle20.copyWith(
          color: AppColors.redColor,
        ),
      ),
    );
  }
}
