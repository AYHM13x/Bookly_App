import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/home/book_details_view.dart';
import '../../Features/home/home_view.dart';
import '../../constents.dart';

abstract class AppRouter {
  //Paths
  static String kSplashViewPath = "/";
  static String kHomeViewPath = "/homeView";
  static String kBookDetailsViewPath = "/homeView/BookDetailsView";

  static final RouterConfig<Object> router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashViewPath,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const HomeView(),
            transitionDuration: kNavigationToNextView,
            reverseTransitionDuration: kNavigationToNextView,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                alwaysIncludeSemantics: true,
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const BookDetailsView(),
            transitionDuration: kNavigationToNextView,
            reverseTransitionDuration: kNavigationToNextView,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                alwaysIncludeSemantics: true,
                child: child,
              );
            },
          );
        },
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