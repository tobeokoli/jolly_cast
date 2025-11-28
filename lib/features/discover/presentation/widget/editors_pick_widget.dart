import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/colors/jolly_gradients.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';

import '../../../../core/presentation/strings/jolly_strings.dart';
import '../../data/models/episode.dart';

class EditorsPickWidget extends StatelessWidget {
  final Episode episode;
  const EditorsPickWidget({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(JollySizes.s7),
      decoration: BoxDecoration(gradient: JollyGradients.editorsPickContainerGradient, borderRadius: BorderRadius.circular(JollySizes.s12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(JollySizes.s8),
              child: Stack(
                children: [
                  Image.network(episode.pictureUrl ?? '', fit: BoxFit.cover),
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(JollySizes.s12),
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
          ),
          SizedBox(width: JollySizes.s7),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: JollySizes.s7),
                Text(
                  episode.title ?? JollyStrings.na,
                  style: JollyTextStyles.extraBold.copyWith(fontSize: JollySizes.s16),
                  maxLines: JollySizes.s1.toInt(),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: JollySizes.s5),
                Text("${JollyStrings.byColon}${episode.podcast?.author}", style: JollyTextStyles.medium.copyWith(fontSize: JollySizes.s13)),
                SizedBox(height: JollySizes.s6),
                Text(
                  episode.description ?? JollyStrings.na,
                  style: JollyTextStyles.regular.copyWith(fontSize: JollySizes.s12),
                  maxLines: JollySizes.s5.toInt(),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: JollySizes.s11),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(JollySizes.s6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(JollySizes.s18),
                        color: Theme.of(context).colorScheme.secondaryContainer.withAlpha(JollySizes.s153.toInt()),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle, size: JollySizes.s18, color: Theme.of(context).colorScheme.onSecondaryContainer),
                          SizedBox(width: JollySizes.s4),
                          Text(
                            JollyStrings.follow,
                            style: JollyTextStyles.semiBold.copyWith(
                              fontSize: JollySizes.s12,
                              color: Theme.of(context).colorScheme.onSecondaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: JollySizes.s10),
                    Container(
                      padding: EdgeInsets.all(JollySizes.s8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Theme.of(context).colorScheme.onSecondaryContainer),
                      ),
                      child: Icon(Icons.share, size: JollySizes.s12, color: Theme.of(context).colorScheme.onSecondaryContainer),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
