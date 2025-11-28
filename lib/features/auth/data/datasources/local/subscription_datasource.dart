import 'dart:convert';

import 'package:jolly_cast/core/error/app_error.dart';
import 'package:jolly_cast/core/networking/status_codes/jolly_status_codes.dart';

import '../../../../../core/local_storage/local_storage_client.dart';
import '../../../../../core/local_storage/local_storage_keys.dart';
import '../../../../../core/shared/result.dart';
import '../../../../../core/presentation/strings/jolly_strings.dart';
import '../../models/subscription.dart';

class SubscriptionDatasource {
  final LocalStorageClient localStorageClient;

  SubscriptionDatasource(this.localStorageClient);

  Future<void> saveSubscription(Subscription subscription) async {
    await localStorageClient.write(LocalStorageKeys.jollySubscription, jsonEncode(subscription.toJson()));
  }

  Future<Result<Subscription?>> getSubscription() async {
    final subscriptionString = localStorageClient.read(LocalStorageKeys.jollySubscription);
    if (subscriptionString != null) {
      final subscriptionJson = jsonDecode(subscriptionString);
      final subscription = Subscription.fromJson(subscriptionJson);
      return Result.success(subscription);
    } else {
      return Result.failure(
        AppError(message: JollyStrings.subscriptionNotFound, code: JollyStatusCodes.subscriptionNotFound.toString(), originalError: null),
      );
    }
  }

  Future<void> deleteSubscription() async {
    await localStorageClient.delete(LocalStorageKeys.jollySubscription);
  }
}
