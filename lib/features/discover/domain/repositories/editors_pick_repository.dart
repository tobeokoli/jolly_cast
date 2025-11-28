import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/editors_pick_response_dao.dart';

abstract class EditorsPickRepository {
  Future<Result<JollyApiResponse<EditorsPickResponseDao>>> getEditorsPick();
}
