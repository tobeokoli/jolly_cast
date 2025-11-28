import 'package:dio/dio.dart';

import '../../features/auth/domain/repositories/token_repository.dart';
import '../../features/auth/domain/usecases/delete_last_login_time.dart';
import '../../features/auth/domain/usecases/delete_token.dart';
import '../di/di.dart';
import '../durations/jolly_durations.dart';
import 'constants/jolly_api_constants.dart';
import 'interceptors/jolly_token_interceptor.dart';

class DioClient {
  final Dio _dio;

  DioClient._internal(this._dio);

  static DioClient? _instance;

  Dio get dio => _dio;

  factory DioClient() {
    if (_instance != null) return _instance!;
    final dio = Dio(
      BaseOptions(
        baseUrl: JollyApiConstants.baseUrl,
        connectTimeout: JollyDurations.apiTimeout,
        receiveTimeout: JollyDurations.apiTimeout,
        headers: {'Content-Type': JollyApiConstants.contentType, 'Accept': JollyApiConstants.accept},
      ),
    );
    dio.interceptors.addAll([
      LogInterceptor(request: true, responseBody: true),
      JollyTokenInterceptor(getIt<TokenRepository>(), getIt<DeleteLastLoginTime>(), getIt<DeleteToken>()),
    ]);
    _instance = DioClient._internal(dio);
    return _instance!;
  }
}
