import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/styles.dart';
import '../similar_book_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
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
          child: SimilarBookListView(),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
