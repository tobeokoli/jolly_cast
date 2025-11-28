import '../../../../core/shared/result.dart';

abstract class LastLoginTimeRepository {
  Future<void> saveLastLoginTime(DateTime lastLoginTime);
  Future<Result<DateTime?>> getLastLoginTime();
  Future<void> deleteLastLoginTime();
}
