import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/home/book_details_view.dart';
import '../../Features/home/home_view.dart';
import '../../constents.dart';

abstract class AppRouter {
  static final RouterConfig<Object> router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashViewPath,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}











// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SplashView(),
//     ),
//   ],
// );