import 'package:dio/dio.dart';
import 'package:jolly_cast/core/navigation/router.dart';
import 'package:jolly_cast/core/presentation/snackbars/jolly_snackbars.dart';
import 'package:jolly_cast/features/auth/domain/usecases/delete_last_login_time.dart';
import 'package:jolly_cast/features/auth/domain/usecases/delete_token.dart';

import '../../../features/auth/domain/repositories/token_repository.dart';
import '../../error/app_error.dart';
import '../../navigation/navigation.dart';
import '../../presentation/strings/jolly_strings.dart';
import '../paths/jolly_api_paths.dart';
import '../status_codes/jolly_status_codes.dart';

class JollyTokenInterceptor extends QueuedInterceptorsWrapper with JollySnackbarsMixin {
  final TokenRepository tokenRepository;
  final DeleteLastLoginTime deleteLastLoginTime;
  final DeleteToken deleteToken;

  JollyTokenInterceptor(this.tokenRepository, this.deleteLastLoginTime, this.deleteToken);

  final List<String> _unauthorizedPaths = [JollyApiPaths.login];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final result = await tokenRepository.getToken();
    result.when(
      onSuccess: (token) {
        if (_unauthorizedPaths.contains(options.path)) {
          handler.next(options);
        } else {
          options.headers['Authorization'] = 'Bearer $token';
          handler.next(options);
        }
      },
      onFailure: (error) {
        handler.next(options);
      },
    );
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == JollyStatusCodes.unauthorized) {
      tokenRepository.deleteToken();
      deleteLastLoginTime();
      deleteToken();
      JollyNavigation.replace(JollyRoutes.login);
      showErrorSnackbar(
        AppError(message: JollyStrings.sessionExpiredSubtitle, code: JollyStatusCodes.unauthorized.toString(), originalError: err),
        title: JollyStrings.sessionExpired,
      );
    }
    handler.next(err);
  }
}
