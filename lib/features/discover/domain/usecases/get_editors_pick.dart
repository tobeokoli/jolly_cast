import 'package:jolly_cast/features/discover/domain/repositories/editors_pick_repository.dart';

import '../../../../core/networking/response/jolly_api_response.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/editors_pick_response_dao.dart';

class GetEditorsPick {
  EditorsPickRepository repository;

  GetEditorsPick(this.repository);

  Future<Result<JollyApiResponse<EditorsPickResponseDao>>> call() async {
    return await repository.getEditorsPick();
  }
}
