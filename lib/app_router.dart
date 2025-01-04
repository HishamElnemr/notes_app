import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/views/home_view.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      
    ],
  );
}
