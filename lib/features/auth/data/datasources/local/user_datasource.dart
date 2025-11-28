import 'dart:convert';

import 'package:jolly_cast/core/shared/result.dart';

import '../../../../../core/error/app_error.dart';
import '../../../../../core/local_storage/local_storage_client.dart';
import '../../../../../core/local_storage/local_storage_keys.dart';
import '../../../../../core/networking/status_codes/jolly_status_codes.dart';
import '../../../../../core/presentation/strings/jolly_strings.dart';
import '../../models/user.dart';

class UserDatasource {
  final LocalStorageClient localStorageClient;

  UserDatasource(this.localStorageClient);

  Future<void> saveUser(User jollyUser) async {
    await localStorageClient.write(LocalStorageKeys.jollyUser, jsonEncode(jollyUser.toJson()));
  }

  Future<Result<User>> getUser() async {
    final userString = localStorageClient.read(LocalStorageKeys.jollyUser);
    if (userString != null) {
      final userJson = jsonDecode(userString);
      final user = User.fromJson(userJson);
      return Result.success(user);
    } else {
      return Result.failure(AppError(message: JollyStrings.userNotFound, code: JollyStatusCodes.userNotFound.toString(), originalError: null));
    }
  }

  Future<void> deleteUser() async {
    await localStorageClient.delete(LocalStorageKeys.jollyUser);
  }
}
