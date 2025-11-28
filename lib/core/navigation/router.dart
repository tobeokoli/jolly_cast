import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jolly_cast/features/podcast_player/presentation/view/jolly_podcast_player.dart';

import '../../core/keys/jolly_keys.dart';
import '../../features/auth/presentation/view/login.dart';
import '../../features/auth/presentation/view_model/login_view_model.dart';
import '../../features/root/presentation/view/root.dart';
import '../../features/root/presentation/view_model/root_view_model.dart';
import '../../features/splash/presentation/view/splash.dart';
import '../../features/splash/presentation/view_model/splash_view_model.dart';
import '../di/di.dart';

class JollyRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String root = '/root';
  static const String podcastPlayer = '/podcast-player';
}

class JollyRouter {
  static final router = GoRouter(
    navigatorKey: jollyNavigatorKey,
    routes: [
      GoRoute(
        path: JollyRoutes.splash,
        builder: (context, state) {
          final viewModel = getIt<SplashViewModel>();
          return Splash(viewModel: viewModel);
        },
      ),
      GoRoute(
        path: JollyRoutes.login,
        builder: (context, state) {
          final viewModel = getIt<LoginViewModel>();
          return Login(viewModel: viewModel);
        },
      ),
      GoRoute(
        path: JollyRoutes.root,
        builder: (context, state) {
          final viewModel = getIt<RootViewModel>();
          return Root(viewModel: viewModel);
        },
      ),
      GoRoute(
        path: JollyRoutes.podcastPlayer,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(0, 1);
              const end = Offset.zero;

              final slideTween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeOut));

              final fadeTween = Tween<double>(begin: 0, end: 1);

              return SlideTransition(
                position: animation.drive(slideTween),
                child: FadeTransition(opacity: animation.drive(fadeTween), child: child),
              );
            },
            child: JollyPodcastPlayer(),
          );
        },
      ),
    ],
  );
}
