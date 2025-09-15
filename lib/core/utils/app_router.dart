import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/homeView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: homeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
        ],
      ),
    ],
  );
}
