import 'package:jolly_cast/features/auth/domain/repositories/last_login_time_repository.dart';

import '../../../../core/shared/result.dart';
import '../datasources/local/last_login_time_datasource.dart';

class LastLoginTimeRepositoryImpl implements LastLoginTimeRepository {
  final LastLoginTimeDatasource lastLoginTimeDatasource;

  LastLoginTimeRepositoryImpl(this.lastLoginTimeDatasource);

  @override
  Future<void> saveLastLoginTime(DateTime lastLoginTime) async {
    lastLoginTimeDatasource.saveLastLoginTime(lastLoginTime);
  }

  @override
  Future<Result<DateTime?>> getLastLoginTime() async {
    return await lastLoginTimeDatasource.getLastLoginTime();
  }

  @override
  Future<void> deleteLastLoginTime() async {
    lastLoginTimeDatasource.deleteLastLoginTime();
  }
}
