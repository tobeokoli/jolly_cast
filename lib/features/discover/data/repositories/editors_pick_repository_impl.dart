import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../domain/repositories/editors_pick_repository.dart';
import '../datasources/editors_pick_datasource.dart';
import '../models/editors_pick_response_dao.dart';

class EditorsPickRepositoryImpl implements EditorsPickRepository {
  final EditorsPickDatasource dataSource;

  EditorsPickRepositoryImpl(this.dataSource);

  @override
  Future<Result<JollyApiResponse<EditorsPickResponseDao>>> getEditorsPick() async {
    return await dataSource.getEditorsPick();
  }
}
