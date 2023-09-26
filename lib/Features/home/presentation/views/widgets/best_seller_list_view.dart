import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constents.dart';
import '../../../book_details_view.dart';
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
              Get.to(() => const BookDetailsView(),
                  transition: Transition.fadeIn,
                  duration: kNavigationToNextView);
            },
            child: const BestSellerItemView(),
          ),
        );
      },
    );
  }
}
