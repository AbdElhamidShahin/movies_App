import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/HomeView.dart' show HomeView;
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
    ],
  );
}
