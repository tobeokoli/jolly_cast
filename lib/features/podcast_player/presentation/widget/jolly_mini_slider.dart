import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';

class JollyMiniSlider extends StatelessWidget {
  final Duration position;
  final Duration duration;
  const JollyMiniSlider({super.key, required this.position, required this.duration});

  @override
  Widget build(BuildContext context) {
    final double total = duration.inMilliseconds.toDouble();
    final double current = position.inMilliseconds.toDouble();

    final progress = total == 0 ? 0.0 : (current / total);

    return Container(
      height: JollySizes.s1,
      width: double.infinity,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.onSecondaryContainer.withAlpha(JollySizes.s77.toInt())),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(color: Theme.of(context).colorScheme.onSecondaryContainer),
      ),
    );
  }
}
