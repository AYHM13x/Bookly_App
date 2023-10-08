import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/home/data/repos/home_repo_impl.dart';
import 'Features/home/presentation/view_models/all_books_cubits/all_books_cubit.dart';
import 'Features/home/presentation/view_models/newest_books_cubits/newest_books_cubit.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locater.dart';
import 'simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  setupServiceLocater();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchAllBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: "Bookly App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColors.primaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
