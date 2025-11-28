import '../../../core/error/app_error.dart';
import '../../../core/presentation/strings/jolly_strings.dart';

class LoginError extends AppError {
  final String title;
  LoginError({required super.message, super.code, super.originalError, this.title = JollyStrings.loginFailedExclamation});
}
