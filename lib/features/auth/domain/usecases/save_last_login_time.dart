import '../repositories/last_login_time_repository.dart';

class SaveLastLoginTime {
  final LastLoginTimeRepository repository;

  SaveLastLoginTime(this.repository);

  Future<void> call(DateTime lastLoginTime) async {
    await repository.saveLastLoginTime(lastLoginTime);
  }
}
