import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';

class JollySlider extends StatelessWidget {
  final Duration position;
  final Duration duration;
  final Duration? scrubPosition;
  final ValueChanged<Duration> onScrubStart;
  final ValueChanged<Duration> onScrub;
  final ValueChanged<Duration> onScrubEnd;

  const JollySlider({
    super.key,
    required this.position,
    required this.duration,
    required this.scrubPosition,
    required this.onScrubStart,
    required this.onScrub,
    required this.onScrubEnd,
  });

  @override
  Widget build(BuildContext context) {
    final double max = duration.inMilliseconds.toDouble();
    final double current = (scrubPosition ?? position).inMilliseconds.toDouble();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: JollySizes.s4, vertical: JollySizes.s0_5),
      decoration: BoxDecoration(color: Colors.black.withAlpha(JollySizes.s102.toInt()), borderRadius: BorderRadius.circular(12)),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          padding: EdgeInsets.all(JollySizes.s1),
          trackHeight: JollySizes.s2,
          inactiveTrackColor: Colors.transparent,
          activeTrackColor: Theme.of(context).colorScheme.onPrimary.withAlpha(JollySizes.s102.toInt()),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: JollySizes.s2),
          thumbColor: Colors.white,
          overlayColor: Colors.white.withAlpha(JollySizes.s51.toInt()),
        ),
        child: Stack(
          children: [
            Slider(
              min: 0,
              max: max,
              value: current.clamp(0, max),
              onChangeStart: (value) {
                onScrubStart(Duration(milliseconds: value.toInt()));
              },
              onChanged: (value) {
                onScrub(Duration(milliseconds: value.toInt()));
              },
              onChangeEnd: (value) {
                onScrubEnd(Duration(milliseconds: value.toInt()));
              },
              thumbColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
