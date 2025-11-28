import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/login_dto.dart';
import '../../data/models/login_response_data.dart';

abstract class LoginRepository {
  Future<Result<JollyApiResponse<LoginResponseData>>> login(LoginDto loginDto);
}
