import 'dart:developer';

import 'package:jolly_cast/core/navigation/navigation.dart';
import 'package:jolly_cast/core/navigation/router.dart';
import 'package:jolly_cast/core/shared/result.dart';
import 'package:jolly_cast/features/discover/domain/usecases/get_editors_pick.dart';
import 'package:jolly_cast/features/discover/domain/usecases/get_trending_episodes.dart';

import '../../../../core/di/di.dart';
import '../../../../core/presentation/view_model/jolly_view_model.dart';
import '../../../../core/shared/command.dart';
import '../../../podcast_player/presentation/view_model/jolly_podcast_player_view_model.dart';
import '../../data/models/episode.dart';

class DiscoverViewModel extends JollyViewModel {
  final GetEditorsPick getEditorsPick;
  final GetTrendingEpisodes getTrendingEpisodes;

  DiscoverViewModel(this.getEditorsPick, this.getTrendingEpisodes);

  Command0<void>? _getEditorsPickCommand;
  Command0<void>? get getEditorsPickCommand => _getEditorsPickCommand;

  Command0<void>? _getTrendingEpisodesCommand;
  Command0<void>? get getTrendingEpisodesCommand => _getTrendingEpisodesCommand;

  Episode? _editorsPickEpisode;
  Episode? get editorsPickEpisode => _editorsPickEpisode;

  List<Episode>? _trendingEpisodes;
  List<Episode>? get trendingEpisodes => _trendingEpisodes;

  bool get hasEditorsPick => _editorsPickEpisode != null;

  bool get hasTrenidingEpisodes => _trendingEpisodes != null && _trendingEpisodes!.isNotEmpty;

  @override
  void bind(context) {
    _getEditorsPickCommand ??= Command0<void>(_getEditorsPick)..execute();
    _getTrendingEpisodesCommand ??= Command0<void>(_getTrendingEpisodes)..execute();
  }

  Future<Result<void>> _getEditorsPick() async {
    final editorsPickResult = await getEditorsPick();
    editorsPickResult.when(
      onSuccess: (data) {
        _editorsPickEpisode = data.data.data;
        notifyListeners();
      },
      onFailure: (error) {
        log(error.toString());
        addError(error);
      },
    );
    return editorsPickResult;
  }

  Future<Result<void>> _getTrendingEpisodes() async {
    final trendingEpisodesResult = await getTrendingEpisodes();
    trendingEpisodesResult.when(
      onSuccess: (data) {
        _trendingEpisodes = data.data.data.data;
        notifyListeners();
      },
      onFailure: (error) {
        log(error.toString());
        addError(error);
      },
    );
    return trendingEpisodesResult;
  }

  void onEditorsPickTapped() {
    if (_editorsPickEpisode == null) return;
    final podcastPlayerViewModel = getIt<JollyPodcastPlayerViewModel>();
    podcastPlayerViewModel.setEpisode(_editorsPickEpisode!);
    notifyListeners();
    JollyNavigation.goTo(JollyRoutes.podcastPlayer);
  }

  void onTrendingEpisodeTapped(Episode episode) {
    final podcastPlayerViewModel = getIt<JollyPodcastPlayerViewModel>();
    podcastPlayerViewModel.setEpisode(episode);
    podcastPlayerViewModel.setTrendingEpisodes(trendingEpisodes);
    notifyListeners();
    JollyNavigation.goTo(JollyRoutes.podcastPlayer);
  }
}
