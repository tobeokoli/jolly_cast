import 'package:jolly_cast/core/networking/dio_client.dart';
import 'package:jolly_cast/core/networking/response/jolly_api_response.dart';
import 'package:jolly_cast/features/discover/data/models/trending_episodes_response_dao.dart';

import '../../../../core/error/app_error.dart';
import '../../../../core/networking/error_handling/jolly_api_error_handler.dart';
import '../../../../core/networking/paths/jolly_api_paths.dart';
import '../../../../core/networking/status_codes/jolly_status_codes.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';
import '../../../../core/shared/result.dart';

class TrendingEpisodesDatasource {
  final DioClient dioClient;

  TrendingEpisodesDatasource(this.dioClient);

  JollyApiResponse<JollyApiResponse<TrendingEpisodesResponseDao>> _createApiResponse(Map<String, dynamic> data) {
    return JollyApiResponse(
      message: data['message'],
      data: JollyApiResponse(
        message: data['data']['message'],
        data: TrendingEpisodesResponseDao.fromJson(data['data']['data']),
        rawResponse: data['data'],
      ),
      rawResponse: data,
    );
  }

  Future<Result<JollyApiResponse<JollyApiResponse<TrendingEpisodesResponseDao>>>> getTrendingEpisodes() async {
    try {
      final response = await dioClient.dio.get(JollyApiPaths.trendingEpisodes);
      if (response.statusCode == JollyStatusCodes.ok) {
        final apiResponse = _createApiResponse(response.data);
        return Result.success(apiResponse);
      } else {
        return Result.failure(
          AppError(
            message: response.data['message'] ?? JollyStrings.errorGettingTrendingEpisodes,
            code: response.statusCode.toString(),
            originalError: response.data,
          ),
        );
      }
    } catch (e) {
      return Result.failure(handleJollyApiError(e));
    }
  }
}
