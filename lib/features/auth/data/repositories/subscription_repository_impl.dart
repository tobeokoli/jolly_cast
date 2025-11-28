import 'package:jolly_cast/features/auth/domain/repositories/subscription_repository.dart';

import '../../../../core/shared/result.dart';
import '../datasources/local/subscription_datasource.dart';
import '../models/subscription.dart';

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final SubscriptionDatasource subscriptionDatasource;

  SubscriptionRepositoryImpl(this.subscriptionDatasource);

  @override
  Future<void> saveSubscription(subscription) {
    return subscriptionDatasource.saveSubscription(subscription);
  }

  @override
  Future<Result<Subscription?>> getSubscription() {
    return subscriptionDatasource.getSubscription();
  }

  @override
  Future<void> deleteSubscription() {
    return subscriptionDatasource.deleteSubscription();
  }
}
