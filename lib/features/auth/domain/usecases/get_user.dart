import 'package:jolly_cast/features/auth/data/models/user.dart';
import 'package:jolly_cast/features/auth/domain/repositories/user_repository.dart';

import '../../../../core/shared/result.dart';

class GetUser {
  UserRepository repository;

  GetUser(this.repository);

  Future<Result<User?>> call() async {
    return await repository.getUser();
  }
}
