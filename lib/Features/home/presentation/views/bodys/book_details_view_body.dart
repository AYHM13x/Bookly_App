import 'package:bookly_app/Features/home/presentation/views/widgets/Custom_widgets/rating_of_best_seller_item.dart';
import 'package:bookly_app/constents.dart';
import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../widgets/Custom_widgets/book_card_item.dart';
import '../widgets/Custom_widgets/custom_app_bar.dart';
import '../widgets/Custom_widgets/custom_app_bar_icon_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(
                firstWidget: CustomIconButton(
                  icon: Icon(
                    Icons.close,
                    color: kWhiteColor,
                    size: 40,
                  ),
                ),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: kWhiteColor,
                  size: 40,
                ),
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 3),
              ),
              SizedBox(
                width: DimensionsOfScreen.dimensionsOfWidth(context, 40),
                child: const BookCardItemView(),
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 4),
              ),
              const Text(
                "The Jungle Book",
                style: Styles.textStyle30,
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 1),
              ),
              Text(
                "Rudyard Kipling",
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  color: kGreyColor,
                ),
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 2),
              ),
              const RatingOfBestSellerItem(),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    child: Text(
                      "19.99$kEuroSympol",
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: kOrangeColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Text(
                      "Free preview",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 4),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(
                firstWidget: CustomIconButton(
                  icon: Icon(
                    Icons.close,
                    color: kWhiteColor,
                    size: 40,
                  ),
                ),
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: kWhiteColor,
                  size: 40,
                ),
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 3),
              ),
              SizedBox(
                width: DimensionsOfScreen.dimensionsOfWidth(context, 40),
                child: const BookCardItemView(),
              ),
              SizedBox(
                height: DimensionsOfScreen.dimensionsOfHeight(context, 5),
              ),
              const Text(
                "The Jungle Book",
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Rudyard Kipling",
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  color: kGreyColor,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const RatingOfBestSellerItem(),
              const SizedBox(
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    child: Text(
                      "19.99$kEuroSympol",
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: kOrangeColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Text(
                      "Free preview",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kWhiteColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
