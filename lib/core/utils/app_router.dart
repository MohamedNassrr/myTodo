import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_todo/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const SplashView(),
      ),
    ],
  );
}
