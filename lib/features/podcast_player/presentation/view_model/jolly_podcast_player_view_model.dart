// ignore_for_file: unused_field

import 'dart:async';

import 'package:jolly_cast/core/navigation/navigation.dart';
import 'package:jolly_cast/core/navigation/router.dart';
import 'package:jolly_cast/features/discover/data/models/episode.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../core/presentation/strings/jolly_duration_mixin.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';
import '../../../../core/presentation/view_model/jolly_view_model.dart';

class JollyPodcastPlayerViewModel extends JollyViewModel with JollyDurationMixin {
  Episode? _episode;
  Episode? get episode => _episode;

  List<Episode>? _trendingEpisodes;
  List<Episode>? get trendingEpisodes => _trendingEpisodes;

  final AudioPlayer _audioPlayer = AudioPlayer();
  AudioPlayer get audioPlayer => _audioPlayer;

  bool get isPlaying => _audioPlayer.playing;

  Duration _position = Duration.zero;
  Duration get position => _position;

  String get positionDisplay => formatDuration(position);

  Duration _duration = Duration.zero;
  Duration get duration => _duration;

  String get durationDisplay => formatDuration(duration);

  StreamSubscription<Duration>? _positionSub;
  StreamSubscription<Duration?>? _durationSub;

  int get _currentIndex {
    if (_trendingEpisodes == null || _episode == null) return -1;
    return _trendingEpisodes!.indexWhere((e) => e.id == _episode!.id);
  }

  @override
  Future<void> bind(context, {Episode? newEpisode}) async {
    if (newEpisode != null) {
      _episode = newEpisode;
      await _audioPlayer.setUrl(newEpisode.contentUrl ?? '');
      notifyListeners();
    }
    _positionSub = _audioPlayer.positionStream.listen((pos) {
      _position = pos;
      notifyListeners();
    });
    _durationSub = _audioPlayer.durationStream.listen((dur) {
      if (dur != null) {
        _duration = dur;
        notifyListeners();
      }
    });
    _audioPlayer.playerStateStream.listen((state) async {
      if (state.processingState == ProcessingState.completed) {
        // await _audioPlayer.seek(Duration.zero);
        // await _audioPlayer.pause();
        // _position = Duration.zero;
        // notifyListeners();
        playNext();
      }
    });
  }

  void setEpisode(Episode newEpisode) async {
    if (_episode?.id == newEpisode.id) {
      if (!isPlaying) {
        _audioPlayer.play();
      }
      return;
    }
    _episode = newEpisode;
    await _audioPlayer.setUrl(newEpisode.contentUrl ?? JollyStrings.EMPTY);
    await _audioPlayer.play();
    notifyListeners();
  }

  void setTrendingEpisodes(List<Episode>? newTrendingEpisodes) async {
    _trendingEpisodes = newTrendingEpisodes;
    notifyListeners();
  }

  void togglePlayPause() async {
    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play();
    }
    notifyListeners();
  }

  void onMiniPlayerTapped() async {
    JollyNavigation.goTo(JollyRoutes.podcastPlayer);
  }

  void onClosePodcastPlayerPressed() async {
    JollyNavigation.goBack();
  }

  void seekForward({Duration step = const Duration(seconds: 10)}) async {
    final newPosition = _position + step;
    final clampedPosition = newPosition > _duration ? _duration : newPosition;
    await _audioPlayer.seek(clampedPosition);
    _position = clampedPosition;
    notifyListeners();
  }

  void seekBackward({Duration step = const Duration(seconds: 10)}) async {
    final newPosition = _position - step;
    final clampedPosition = newPosition.isNegative ? Duration.zero : newPosition;
    await _audioPlayer.seek(clampedPosition);
    _position = clampedPosition;
    notifyListeners();
  }

  void updateScrubPosition(Duration newPosition) {
    _position = newPosition;
    notifyListeners();
  }

  void seekTo(Duration newPosition) async {
    final clamped = newPosition < Duration.zero ? Duration.zero : (newPosition > _duration ? _duration : newPosition);

    await _audioPlayer.seek(clamped);
    _position = clamped;
    notifyListeners();
  }

  void playNext() async {
    if (_trendingEpisodes == null || _trendingEpisodes!.isEmpty) return;

    final index = _currentIndex;

    // If no episode selected, start with first
    if (index == -1) {
      setEpisode(_trendingEpisodes!.first);
      return;
    }

    // If next episode exists
    final nextIndex = index + 1;
    if (nextIndex < _trendingEpisodes!.length) {
      setEpisode(_trendingEpisodes![nextIndex]);
    }
  }

  void playPrevious() async {
    if (_trendingEpisodes == null || _trendingEpisodes!.isEmpty) return;

    const restartThreshold = Duration(seconds: 5);

    // If far into the episode → restart instead of going back
    if (_position > restartThreshold) {
      await _audioPlayer.seek(Duration.zero);
      _position = Duration.zero;
      notifyListeners();
      return;
    }

    final index = _currentIndex;
    if (index == -1) return;

    // If previous exists → play previous episode
    final prevIndex = index - 1;
    if (prevIndex >= 0) {
      setEpisode(_trendingEpisodes![prevIndex]);
    } else {
      // No previous episode → restart current
      await _audioPlayer.seek(Duration.zero);
      _position = Duration.zero;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
