import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/styles.dart';

class FailureMessage extends StatelessWidget {
  const FailureMessage({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18.copyWith(
          color: AppColors.redColor,
        ),
      ),
    );
  }
}
