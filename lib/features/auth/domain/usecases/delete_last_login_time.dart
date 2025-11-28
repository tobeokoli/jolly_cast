import 'package:jolly_cast/features/auth/domain/repositories/last_login_time_repository.dart';

class DeleteLastLoginTime {
  LastLoginTimeRepository repository;

  DeleteLastLoginTime(this.repository);

  Future<void> call() async {
    await repository.deleteLastLoginTime();
  }
}
