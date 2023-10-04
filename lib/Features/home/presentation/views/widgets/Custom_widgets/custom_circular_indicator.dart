import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.orangeColor,
      ),
    );
  }
}
