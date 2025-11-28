import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../keys/jolly_keys.dart';

class JollyNavigation {
  static late GoRouter router;

  static BuildContext? get context => jollyNavigatorKey.currentContext;

  static void init(GoRouter r) {
    router = r;
  }

  static void goTo<T extends Object?>(String route, [T? arguments]) {
    router.push<T>(route, extra: arguments);
  }

  static void replace<T extends Object?>(String route, [T? arguments]) {
    router.go(route, extra: arguments);
  }

  static void goBack<T extends Object?>([T? result]) {
    router.pop(result);
  }
}
