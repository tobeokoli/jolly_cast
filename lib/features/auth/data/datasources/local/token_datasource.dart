import 'package:jolly_cast/core/error/app_error.dart';
import 'package:jolly_cast/core/local_storage/local_storage_keys.dart';
import 'package:jolly_cast/core/networking/status_codes/jolly_status_codes.dart';

import '../../../../../core/local_storage/local_storage_client.dart';
import '../../../../../core/shared/result.dart';
import '../../../../../core/presentation/strings/jolly_strings.dart';

class TokenDatasource {
  final LocalStorageClient localStorageClient;

  TokenDatasource(this.localStorageClient);

  Future<void> saveToken(String token) async {
    await localStorageClient.privateWrite(LocalStorageKeys.jollyToken, token);
  }

  Future<Result<String?>> getToken() async {
    final token = await localStorageClient.privateRead(LocalStorageKeys.jollyToken);
    if (token == null) {
      return Result.failure(AppError(message: JollyStrings.tokenNotFound, code: JollyStatusCodes.tokenNotFound.toString(), originalError: null));
    }
    return Result.success(token);
  }

  Future<void> deleteToken() async {
    await localStorageClient.privateDelete(LocalStorageKeys.jollyToken);
  }
}
