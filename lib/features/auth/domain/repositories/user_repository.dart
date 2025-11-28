import 'package:jolly_cast/features/auth/data/models/user.dart';

import '../../../../core/shared/result.dart';

abstract class UserRepository {
  Future<void> saveUser(User user);
  Future<Result<User?>> getUser();
  Future<void> deleteUser();
}
