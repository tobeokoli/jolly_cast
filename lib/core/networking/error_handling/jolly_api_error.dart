import '../../error/app_error.dart';

class JollyApiError extends AppError {
  final dynamic rawResponse;
  JollyApiError({required super.message, super.code, super.originalError, this.rawResponse});
}
