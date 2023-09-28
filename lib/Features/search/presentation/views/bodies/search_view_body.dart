import 'package:bookly_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/search_book_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintText: "Search",
        ),
        SizedBox(
          height: DimensionsOfScreen.dimensionsOfHeight(context, 3),
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, 78),
            child: const SearchBookListView(),
          ),
        )
      ],
    );
  }
}
