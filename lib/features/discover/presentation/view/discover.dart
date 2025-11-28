import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';
import 'package:jolly_cast/features/discover/presentation/widget/editors_pick_widget.dart';
import 'package:jolly_cast/features/podcast_player/presentation/widget/jolly_mini_podcast_player_aware_view.dart';

import '../../../../core/assets/jolly_assets.dart';
import '../../../../core/di/di.dart';
import '../../../../core/presentation/sizes/jolly_sizes.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';
import '../view_model/discover_view_model.dart';
import '../widget/trending_episode_widget.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<DiscoverViewModel>()..bind(context);
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return JollyMiniPodcastPlayerAwareView(
          content: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: JollySizes.topSpacing(context)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: JollySizes.s16),
                child: Row(children: [Image.asset(JollyAssets.jollyAuthLogo, height: JollySizes.s40)]),
              ),
              SizedBox(height: JollySizes.s7),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    await viewModel.getEditorsPickCommand?.execute();
                    await viewModel.getTrendingEpisodesCommand?.execute();
                  },
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: JollySizes.s16),
                    child: Column(
                      children: [
                        SizedBox(height: JollySizes.s40),
                        if (viewModel.getEditorsPickCommand?.running == true && viewModel.getTrendingEpisodesCommand?.running == true)
                          Column(
                            children: [
                              SizedBox(height: JollySizes.s40),
                              CircularProgressIndicator(),
                            ],
                          ),
                        if (!viewModel.hasEditorsPick &&
                            !viewModel.hasTrenidingEpisodes &&
                            viewModel.getEditorsPickCommand?.running == false &&
                            viewModel.getTrendingEpisodesCommand?.running == false)
                          Column(
                            children: [
                              SizedBox(height: JollySizes.s40),
                              Icon(Icons.podcasts_rounded, size: JollySizes.s37),
                              Text(JollyStrings.noPodcastsFound),
                            ],
                          ),
                        viewModel.hasTrenidingEpisodes && viewModel.getTrendingEpisodesCommand?.running == false
                            ? Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(JollyAssets.trendingPng, height: JollySizes.s27, width: JollySizes.s27),
                                      SizedBox(width: JollySizes.s6),
                                      Text(JollyStrings.hotAndTrendingEpisodes, style: JollyTextStyles.extraBold),
                                    ],
                                  ),
                                  SizedBox(height: JollySizes.s17),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children:
                                          viewModel.trendingEpisodes
                                              ?.map(
                                                (episode) => GestureDetector(
                                                  onTap: () {
                                                    viewModel.onTrendingEpisodeTapped(episode);
                                                  },
                                                  child: TrendingEpisodeWidget(episode: episode),
                                                ),
                                              )
                                              .toList() ??
                                          [],
                                    ),
                                  ),
                                  SizedBox(height: JollySizes.s50),
                                ],
                              )
                            : SizedBox.shrink(),
                        viewModel.hasEditorsPick && viewModel.getEditorsPickCommand?.running == false
                            ? Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(JollyAssets.editorsPickStar, height: JollySizes.s27, width: JollySizes.s27),
                                      SizedBox(width: JollySizes.s6),
                                      Text(JollyStrings.editorsPick, style: JollyTextStyles.extraBold),
                                    ],
                                  ),
                                  SizedBox(height: JollySizes.s17),
                                  GestureDetector(
                                    onTap: () {
                                      viewModel.onEditorsPickTapped();
                                    },
                                    child: EditorsPickWidget(episode: viewModel.editorsPickEpisode!),
                                  ),
                                ],
                              )
                            : SizedBox.shrink(),
                        SizedBox(height: JollySizes.s80),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
