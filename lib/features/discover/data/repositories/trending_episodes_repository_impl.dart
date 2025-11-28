import 'package:jolly_cast/features/discover/data/datasources/trending_episodes_datasource.dart';

import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../domain/repositories/trending_episodes_repository.dart';
import '../models/trending_episodes_response_dao.dart';

class TrendingEpisodesRepositoryImpl implements TrendingEpisodesRepository {
  final TrendingEpisodesDatasource datasource;

  TrendingEpisodesRepositoryImpl(this.datasource);

  @override
  Future<Result<JollyApiResponse<JollyApiResponse<TrendingEpisodesResponseDao>>>> getTrendingEpisodes() async {
    return await datasource.getTrendingEpisodes();
  }
}
