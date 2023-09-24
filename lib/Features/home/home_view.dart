import 'package:bookly_app/Features/home/presentation/views/bodys/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../core/utils/dimensions_of_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 0,
          top: DimensionsOfScreen.dimensionsOfHeight(context, 2),
          right: DimensionsOfScreen.dimensionsOfWidth(context, 2.5),
          left: DimensionsOfScreen.dimensionsOfWidth(context, 2.5),
        ),
        child: const HomeViewBody(),
      ),
    );
  }
}


// EdgeInsets.symmetric(
//         vertical: DimensionsOfScreen.dimensionsOfHeight(context, 2),
//         horizontal: DimensionsOfScreen.dimensionsOfWidth(context, 2.5),
//       )