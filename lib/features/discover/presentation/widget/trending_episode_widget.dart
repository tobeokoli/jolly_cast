import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/colors/jolly_gradients.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';
import 'package:jolly_cast/features/discover/data/models/episode.dart';

import '../../../../core/presentation/strings/jolly_strings.dart';

class TrendingEpisodeWidget extends StatelessWidget {
  final Episode episode;
  const TrendingEpisodeWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          width: screenWidth * JollySizes.s0_6,
          height: screenHeight * JollySizes.s0_35,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(JollySizes.s12)),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JollySizes.s12),
                  image: DecorationImage(image: NetworkImage(episode.pictureUrl ?? JollyStrings.EMPTY), fit: BoxFit.cover),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JollySizes.s12),
                  gradient: JollyGradients.trendingEpisodeContainerGradient,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(JollySizes.s14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(JollySizes.s5),
                      child: Stack(
                        children: [
                          Image.network(episode.pictureUrl ?? JollyStrings.EMPTY, height: JollySizes.s100, width: JollySizes.s100),
                          Positioned.fill(
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(JollySizes.s10),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary.withAlpha(JollySizes.s155.toInt()),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Theme.of(context).colorScheme.onPrimary, width: JollySizes.s2),
                                ),
                                child: Icon(Icons.play_arrow, size: JollySizes.s24, color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: JollySizes.s8),
                    Text(episode.podcast?.author ?? JollyStrings.na, style: JollyTextStyles.bold.copyWith(fontSize: JollySizes.s13)),
                    SizedBox(height: JollySizes.s5),
                    Text(
                      episode.title ?? JollyStrings.na,
                      style: JollyTextStyles.extraBold.copyWith(fontSize: JollySizes.s18),
                      maxLines: JollySizes.s1.toInt(),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      episode.description ?? JollyStrings.na,
                      style: JollyTextStyles.medium.copyWith(fontSize: JollySizes.s13),
                      maxLines: JollySizes.s3.toInt(),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: JollySizes.s10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(JollySizes.s10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          child: Icon(Icons.favorite, size: JollySizes.s18),
                        ),
                        SizedBox(width: JollySizes.s10),
                        Container(
                          padding: EdgeInsets.all(JollySizes.s10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          child: Icon(Icons.playlist_add, size: JollySizes.s18),
                        ),
                        SizedBox(width: JollySizes.s10),
                        Container(
                          padding: EdgeInsets.all(JollySizes.s10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          child: Icon(Icons.share, size: JollySizes.s18),
                        ),
                        SizedBox(width: JollySizes.s10),
                        Container(
                          padding: EdgeInsets.all(JollySizes.s10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
                          ),
                          child: Icon(Icons.add_circle, size: JollySizes.s18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: JollySizes.s16),
      ],
    );
  }
}
