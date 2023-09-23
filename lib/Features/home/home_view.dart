import 'package:bookly_app/Features/home/presentation/views/bodys/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(18.0),
      child: HomeViewBody(),
    ));
  }
}
