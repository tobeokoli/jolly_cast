import 'package:flutter/material.dart';
import 'package:jolly_cast/features/root/presentation/widget/jolly_bottom_nav_bar.dart';

import '../../../discover/presentation/view/discover.dart';
import '../../../podcast_player/presentation/widget/jolly_mini_podcast_player_aware_view.dart';
import '../view_model/root_view_model.dart';

class Root extends StatelessWidget {
  final RootViewModel viewModel;
  const Root({super.key, required this.viewModel});

  List<Widget> get _views => [
    Discover(),
    JollyMiniPodcastPlayerAwareView(content: Center(child: Text('Categories View'))),
    JollyMiniPodcastPlayerAwareView(content: Center(child: Text('Library View'))),
  ];

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel..bind(context),
      builder: (context, child) {
        return Scaffold(
          body: _views[viewModel.currentIndex],
          bottomNavigationBar: JollyBottomNavBar(
            currentIndex: viewModel.currentIndex,
            onTap: (index) {
              viewModel.currentIndex = index;
            },
          ),
        );
      },
    );
  }
}
