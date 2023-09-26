import 'package:flutter/material.dart';

import '../../core/utils/dimensions_of_screen.dart';
import 'presentation/views/bodys/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          top: DimensionsOfScreen.dimensionsOfHeight(context, 4),
          right: DimensionsOfScreen.dimensionsOfWidth(context, 3),
          left: DimensionsOfScreen.dimensionsOfWidth(context, 3),
        ),
        child: const BookDetailsViewBody(),
      ),
    );
  }
}
