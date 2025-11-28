import 'package:flutter/material.dart';

class JollyPodcastPlayerPageRoute extends PageRouteBuilder {
  final Widget page;

  JollyPodcastPlayerPageRoute({required this.page})
    : super(
        transitionDuration: const Duration(milliseconds: 300),
        reverseTransitionDuration: const Duration(milliseconds: 250),
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final tween = Tween(begin: const Offset(0, 1), end: Offset.zero).chain(CurveTween(curve: Curves.easeOut));

          final reverseTween = Tween(begin: Offset.zero, end: const Offset(0, 1)).chain(CurveTween(curve: Curves.easeIn));

          return SlideTransition(
            position: animation.status == AnimationStatus.reverse ? animation.drive(reverseTween) : animation.drive(tween),
            child: child,
          );
        },
      );
}
