import 'package:jolly_cast/features/auth/data/datasources/local/user_datasource.dart';

import '../../../../core/shared/result.dart';
import '../../domain/repositories/user_repository.dart';
import '../models/user.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDatasource userDatasource;

  UserRepositoryImpl(this.userDatasource);

  @override
  Future<void> saveUser(user) async {
    await userDatasource.saveUser(user);
  }

  @override
  Future<Result<User?>> getUser() async {
    return await userDatasource.getUser();
  }

  @override
  Future<void> deleteUser() async {
    await userDatasource.deleteUser();
  }
}
