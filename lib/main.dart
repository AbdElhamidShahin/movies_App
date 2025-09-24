import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/ServerLocator.dart';
import 'package:movies_app/data/repositories/HomeRepoImple.dart';
import 'package:movies_app/presentation/Cubits/MoviesPopularCubit/MoviesPopularCubit.dart';
import 'package:movies_app/presentation/Cubits/MoviesTopRetingCubit/MoviesTopRatingCubit.dart';

import 'core/constants/AppColors.dart';
import 'core/utils/AppRouter.dart';
import 'data/repositories/homeRepo.dart';

void main() {
  setupSeviceLocator(); // مهم جداً

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MoviesPopularCubit(getIt.get<HomeRepo>())
                ..fetchPopularMovies(),
        ),
        BlocProvider(
          create: (context) =>
          MoviesTopRatingCubit(getIt.get<HomeRepo>())
            ..fetchTopRatingMovies(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: backgroundColor,
        theme: ThemeData.dark().copyWith(),
      ),
    );
  }
}
