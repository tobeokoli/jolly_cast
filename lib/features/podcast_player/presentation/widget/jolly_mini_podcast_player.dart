import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';
import 'package:jolly_cast/features/podcast_player/presentation/widget/jolly_mini_slider.dart';

import '../../../../core/presentation/strings/jolly_strings.dart';
import '../view_model/jolly_podcast_player_view_model.dart';

class JollyMiniPodcastPlayer extends StatelessWidget {
  final JollyPodcastPlayerViewModel viewModel;
  const JollyMiniPodcastPlayer({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return viewModel.episode != null
            ? GestureDetector(
                onTap: () => viewModel.onMiniPlayerTapped(),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: JollySizes.s16, vertical: JollySizes.s8),
                      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondaryContainer),
                      child: Row(
                        children: [
                          Hero(
                            tag: '${JollyStrings.podcastImageTag}=${viewModel.episode?.id}',
                            child: Container(
                              width: JollySizes.s48,
                              height: JollySizes.s48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(JollySizes.s4),
                                image: DecorationImage(image: NetworkImage(viewModel.episode?.pictureUrl ?? JollyStrings.EMPTY), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(width: JollySizes.s12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  viewModel.episode?.title ?? JollyStrings.na,
                                  style: TextStyle(fontSize: JollySizes.s16, fontWeight: FontWeight.bold, color: Colors.white),
                                  maxLines: JollySizes.s1.toInt(),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  viewModel.episode?.podcast?.author ?? JollyStrings.na,
                                  style: TextStyle(fontSize: JollySizes.s14, color: Colors.white70),
                                  maxLines: JollySizes.s1.toInt(),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              viewModel.isPlaying ? Icons.pause : Icons.play_arrow,
                              size: JollySizes.s36,
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                            ),
                            onPressed: () {
                              viewModel.togglePlayPause();
                            },
                          ),
                        ],
                      ),
                    ),
                    JollyMiniSlider(position: viewModel.position, duration: viewModel.duration),
                  ],
                ),
              )
            : SizedBox.shrink();
      },
    );
  }
}
