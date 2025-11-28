import '../../../../core/shared/result.dart';
import '../../domain/repositories/token_repository.dart';
import '../datasources/local/token_datasource.dart';

class TokenRepositoryImpl implements TokenRepository {
  final TokenDatasource tokenDatasource;

  TokenRepositoryImpl(this.tokenDatasource);

  @override
  Future<void> saveToken(String token) async {
    await tokenDatasource.saveToken(token);
  }

  @override
  Future<Result<String?>> getToken() async {
    return await tokenDatasource.getToken();
  }

  @override
  Future<void> deleteToken() async {
    await tokenDatasource.deleteToken();
  }
}
