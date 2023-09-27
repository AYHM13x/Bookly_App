import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'Custom_widgets/best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap: () {
              debugPrint(index.toString());
              // Get.to(() => const BookDetailsView(),
              //     transition: Transition.fadeIn,
              //     duration: kNavigationToNextView);
              GoRouter.of(context).push(AppRouter.kBookDetailsViewPath);
            },
            child: const BestSellerItemView(),
          ),
        );
      },
    );
  }
}
