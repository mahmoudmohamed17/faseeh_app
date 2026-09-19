import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      _route(AppRoutes.splash, (context, state) => const Placeholder()),
    ],
  );

  static GoRoute _route(
    String path,
    Widget Function(BuildContext context, GoRouterState state) builder, {
    String? Function(BuildContext context, GoRouterState state)? redirect,
  }) {
    return GoRoute(
      path: path,
      redirect: redirect,
      pageBuilder: (context, state) {
        return CupertinoPage(
          key: state.pageKey,
          child: builder(context, state),
        );
      },
    );
  }
}
