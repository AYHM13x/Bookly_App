import 'package:bookly_app/Features/home/presentation/views/bodys/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../core/utils/dimensions_of_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
