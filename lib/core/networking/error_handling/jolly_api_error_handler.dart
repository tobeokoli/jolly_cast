import 'package:dio/dio.dart';

import '../../presentation/strings/jolly_strings.dart';
import '../status_codes/jolly_status_codes.dart';
import 'jolly_api_error.dart';

JollyApiError handleJollyApiError(dynamic error) {
  if (error is Response) {
    return JollyApiError(
      message: error.data['message'],
      code: error.statusCode.toString(),
      rawResponse: error.data['data'],
      originalError: error.data,
    );
  }
  if (error is DioException) {
    return JollyApiError(
      message: error.response?.data?['message']?.toString() ?? JollyStrings.anErrorOccured,
      code: error.response?.statusCode.toString() ?? JollyStatusCodes.unknownServerError.toString(),
      originalError: error,
      rawResponse: error.response?.data,
    );
  }
  return JollyApiError(
    message: JollyStrings.anErrorOccured,
    code: JollyStatusCodes.unknownServerError.toString(),
    originalError: error,
    rawResponse: null,
  );
}
