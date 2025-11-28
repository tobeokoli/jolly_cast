import '../../../../../core/networking/dio_client.dart';
import '../../../../../core/networking/error_handling/jolly_api_error_handler.dart';
import '../../../../../core/networking/paths/jolly_api_paths.dart';
import '../../../../../core/networking/response/jolly_api_response.dart';
import '../../../../../core/networking/status_codes/jolly_status_codes.dart';
import '../../../../../core/shared/result.dart';
import '../../models/login_dto.dart';
import '../../models/login_response_data.dart';

class LoginDatasource {
  final DioClient dioClient;

  LoginDatasource(this.dioClient);

  Future<Result<JollyApiResponse<LoginResponseData>>> login(LoginDto loginDto) async {
    try {
      final response = await dioClient.dio.post(JollyApiPaths.login, data: loginDto.toJson());
      if (response.statusCode == JollyStatusCodes.ok) {
        return Result.success(
          JollyApiResponse<LoginResponseData>(
            message: response.data['message'],
            data: LoginResponseData.fromJson(response.data['data']),
            rawResponse: response.data,
          ),
        );
      } else {
        return Result.failure(handleJollyApiError(response));
      }
    } catch (e) {
      return Result.failure(handleJollyApiError(e));
    }
  }
}
