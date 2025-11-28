import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jolly_cast/core/assets/jolly_assets.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';
import 'package:jolly_cast/core/presentation/strings/jolly_strings.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';
import 'package:jolly_cast/core/presentation/view/jolly_view.dart';

import '../../../../core/di/di.dart';
import '../view_model/jolly_podcast_player_view_model.dart';
import '../widget/jolly_slider.dart';

class JollyPodcastPlayer extends StatelessWidget {
  const JollyPodcastPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<JollyPodcastPlayerViewModel>();
    final screenWidth = MediaQuery.of(context).size.width;
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return JollyView(
          content: Scaffold(
            body: Stack(
              children: [
                Positioned.fill(child: Image.asset(JollyAssets.podcastPlayerBackground1, fit: BoxFit.cover)),
                Positioned.fill(
                  child: Image.asset(JollyAssets.podcastPlayerBackground2, opacity: AlwaysStoppedAnimation(0.15), repeat: ImageRepeat.repeat),
                ),
                Positioned.fill(
                  child: Column(
                    children: [
                      SizedBox(height: JollySizes.topSpacing(context)),
                      GestureDetector(
                        onTap: () {
                          viewModel.onClosePodcastPlayerPressed();
                        },
                        child: SvgPicture.asset(JollyAssets.podcastPlayerArrowDown),
                      ),
                      SizedBox(height: JollySizes.s37),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * JollySizes.s0_15),
                        child: Column(
                          children: [
                            Hero(
                              tag: '${JollyStrings.podcastImageTag}=${viewModel.episode?.id}',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(JollySizes.s12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.onSecondaryContainer.withAlpha(JollySizes.s128.toInt()),
                                  ),
                                  child: Image.network(
                                    viewModel.episode?.pictureUrl ?? JollyStrings.EMPTY,
                                    loadingBuilder: (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Padding(
                                        padding: const EdgeInsets.all(JollySizes.s45),
                                        child: SvgPicture.asset(
                                          JollyAssets.defaultPodcastSvg,
                                          fit: BoxFit.cover,
                                          height: JollySizes.s200,
                                          width: JollySizes.s200,
                                          colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: JollySizes.s12),
                            Text(
                              viewModel.episode?.title ?? JollyStrings.na,
                              textAlign: TextAlign.center,
                              style: JollyTextStyles.extraBold.copyWith(fontSize: JollySizes.s18),
                              maxLines: JollySizes.s2.toInt(),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: JollySizes.s3),
                            Text(
                              viewModel.episode?.description ?? JollyStrings.na,
                              textAlign: TextAlign.center,
                              style: JollyTextStyles.medium.copyWith(
                                fontSize: JollySizes.s15,
                                color: Theme.of(context).colorScheme.onSecondaryContainer.withAlpha(JollySizes.s204.toInt()),
                              ),
                              maxLines: JollySizes.s4.toInt(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * JollySizes.s0_1),
                        child: Column(
                          children: [
                            SizedBox(height: JollySizes.s27),
                            JollySlider(
                              position: viewModel.position,
                              duration: viewModel.duration,
                              onScrub: (value) => viewModel.updateScrubPosition(value),
                              onScrubEnd: (value) => viewModel.seekTo(value),
                            ),
                            SizedBox(height: JollySizes.s6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(viewModel.positionDisplay, style: JollyTextStyles.bold.copyWith(fontSize: JollySizes.s13)),
                                Text(viewModel.durationDisplay, style: JollyTextStyles.bold.copyWith(fontSize: JollySizes.s13)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: JollySizes.s21),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              viewModel.playPrevious();
                            },
                            child: SvgPicture.asset(JollyAssets.podcastPlayerPrevious, height: JollySizes.s30, width: JollySizes.s30),
                          ),
                          SizedBox(width: JollySizes.s31),
                          GestureDetector(
                            onTap: () {
                              viewModel.seekBackward();
                            },
                            child: SvgPicture.asset(JollyAssets.podcastPlayerSeekBackward10, height: JollySizes.s30, width: JollySizes.s30),
                          ),
                          SizedBox(width: JollySizes.s26),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: JollySizes.s2, color: Theme.of(context).colorScheme.onPrimary),
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.primary.withAlpha(JollySizes.s128.toInt()),
                            ),
                            child: IconButton(
                              icon: Icon(
                                viewModel.isPlaying ? Icons.pause : Icons.play_arrow,
                                size: JollySizes.s36,
                                color: Theme.of(context).colorScheme.onSecondaryContainer,
                              ),
                              onPressed: () {
                                viewModel.togglePlayPause();
                              },
                            ),
                          ),
                          SizedBox(width: JollySizes.s26),
                          GestureDetector(
                            onTap: () {
                              viewModel.seekForward();
                            },
                            child: SvgPicture.asset(JollyAssets.podcastPlayerSeekForward10, height: JollySizes.s30, width: JollySizes.s30),
                          ),
                          SizedBox(width: JollySizes.s31),
                          GestureDetector(
                            onTap: () {
                              viewModel.playNext();
                            },
                            child: SvgPicture.asset(JollyAssets.podcastPlayerNext, height: JollySizes.s30, width: JollySizes.s30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
