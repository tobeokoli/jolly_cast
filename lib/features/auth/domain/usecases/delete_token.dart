import 'package:jolly_cast/features/auth/domain/repositories/token_repository.dart';

class DeleteToken {
  TokenRepository repository;

  DeleteToken(this.repository);

  Future<void> call() async {
    await repository.deleteToken();
  }
}
