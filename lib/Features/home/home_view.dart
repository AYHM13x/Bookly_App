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
          right: DimensionsOfScreen.dimensionsOfWidth(context, 2),
          left: DimensionsOfScreen.dimensionsOfWidth(context, 2),
        ),
        child: const HomeViewBody(),
      ),
    );
  }
}
