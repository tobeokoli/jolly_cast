import '../../../../../core/error/app_error.dart';
import '../../../../../core/local_storage/local_storage_client.dart';
import '../../../../../core/local_storage/local_storage_keys.dart';
import '../../../../../core/networking/status_codes/jolly_status_codes.dart';
import '../../../../../core/shared/result.dart';
import '../../../../../core/presentation/strings/jolly_strings.dart';

class LastLoginTimeDatasource {
  final LocalStorageClient localStorageClient;

  LastLoginTimeDatasource(this.localStorageClient);

  void saveLastLoginTime(DateTime lastLoginTime) async {
    await localStorageClient.write(LocalStorageKeys.jollyLastLoginTime, lastLoginTime.toIso8601String());
  }

  Future<Result<DateTime?>> getLastLoginTime() async {
    final lastLoginTime = localStorageClient.read(LocalStorageKeys.jollyLastLoginTime);
    if (lastLoginTime == null) {
      return Result.failure(
        AppError(message: JollyStrings.lastLoginTimeNotFound, code: JollyStatusCodes.lastLoginTimeNotFound.toString(), originalError: null),
      );
    }
    return Result.success(DateTime.parse(lastLoginTime));
  }

  void deleteLastLoginTime() async {
    await localStorageClient.delete(LocalStorageKeys.jollyLastLoginTime);
  }
}
