import '../../data/models/user.dart';
import '../repositories/user_repository.dart';

class SaveUser {
  final UserRepository repository;

  SaveUser(this.repository);

  Future<void> call(User user) async {
    await repository.saveUser(user);
  }
}
