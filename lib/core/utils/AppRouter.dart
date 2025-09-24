import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/HomeView.dart';
import '../../presentation/pages/SearchScrren.dart';
import '../../presentation/widgets/CustomDetailsScreen.dart';
import '../constants/Strings.dart';

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
          return const CustomDetailsScreen();
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
