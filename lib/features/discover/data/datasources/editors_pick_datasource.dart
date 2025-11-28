import 'package:jolly_cast/core/error/app_error.dart';
import 'package:jolly_cast/core/networking/dio_client.dart';
import 'package:jolly_cast/core/networking/error_handling/jolly_api_error_handler.dart';
import 'package:jolly_cast/core/networking/status_codes/jolly_status_codes.dart';
import 'package:jolly_cast/core/shared/result.dart';

import '../../../../core/networking/paths/jolly_api_paths.dart';
import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';
import '../models/editors_pick_response_dao.dart';

class EditorsPickDatasource {
  final DioClient dioClient;

  EditorsPickDatasource(this.dioClient);

  JollyApiResponse<EditorsPickResponseDao> _createApiResponse(Map<String, dynamic> data) {
    return JollyApiResponse<EditorsPickResponseDao>(message: data['message'], data: EditorsPickResponseDao.fromJson(data['data']), rawResponse: data);
  }

  Future<Result<JollyApiResponse<EditorsPickResponseDao>>> getEditorsPick() async {
    try {
      final response = await dioClient.dio.get(JollyApiPaths.editorsPick);
      if (response.statusCode == JollyStatusCodes.ok) {
        final apiResponse = _createApiResponse(response.data);
        return Result.success(apiResponse);
      } else {
        return Result.failure(
          AppError(
            message: response.data['message'] ?? JollyStrings.errorGettingEditorsPick,
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
