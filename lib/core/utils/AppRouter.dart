import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/data/models/moviesModel/moviesModel.dart';
import 'package:movies_app/data/repositories/HomeRepoImple.dart';
import 'package:movies_app/presentation/Cubits/CaracterCubit/CaracterCubit.dart';

import '../../data/repositories/homeRepo.dart';
import '../../presentation/pages/HomeView.dart';
import '../../presentation/pages/SearchScrren.dart';
import '../../presentation/widgets/CustomDetailsScreen.dart';
import '../constants/Strings.dart';
import 'ServerLocator.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: KhomeVeiw,
    routes: [
      GoRoute(
        path: KhomeVeiw,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: KdetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          final movie = state.extra as MoviesModel;

          return BlocProvider(
            create: (context) => CaracterCubit(getIt.get<HomeRepo>()),
            child: CustomDetailsScreen(moviesModel: movie),
          );
        },
      ),
      GoRoute(
        path: KsearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
