import 'package:flutter/material.dart';
import 'package:jolly_cast/core/di/di.dart';

import '../view_model/jolly_podcast_player_view_model.dart';
import 'jolly_mini_podcast_player.dart';

class JollyMiniPodcastPlayerAwareView extends StatelessWidget {
  final Widget content;
  const JollyMiniPodcastPlayerAwareView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<JollyPodcastPlayerViewModel>();
    return Column(
      children: [
        Expanded(child: content),
        JollyMiniPodcastPlayer(viewModel: viewModel),
      ],
    );
  }
}
