import '../../../../core/shared/result.dart';

abstract class TokenRepository {
  Future<void> saveToken(String token);
  Future<Result<String?>> getToken();
  Future<void> deleteToken();
}
