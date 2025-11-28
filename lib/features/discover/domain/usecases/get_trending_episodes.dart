import 'package:jolly_cast/features/discover/domain/repositories/trending_episodes_repository.dart';

import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/trending_episodes_response_dao.dart';

class GetTrendingEpisodes {
  TrendingEpisodesRepository repository;

  GetTrendingEpisodes(this.repository);

  Future<Result<JollyApiResponse<JollyApiResponse<TrendingEpisodesResponseDao>>>> call() async {
    return await repository.getTrendingEpisodes();
  }
}
