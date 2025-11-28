import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/trending_episodes_response_dao.dart';

abstract class TrendingEpisodesRepository {
  Future<Result<JollyApiResponse<JollyApiResponse<TrendingEpisodesResponseDao>>>> getTrendingEpisodes();
}
