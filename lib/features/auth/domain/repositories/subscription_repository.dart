import '../../../../core/shared/result.dart';
import '../../data/models/subscription.dart';

abstract class SubscriptionRepository {
  Future<void> saveSubscription(Subscription subscription);
  Future<Result<Subscription?>> getSubscription();
  Future<void> deleteSubscription();
}
