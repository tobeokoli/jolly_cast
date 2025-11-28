import '../../data/models/subscription.dart';
import '../repositories/subscription_repository.dart';

class SaveSubscription {
  final SubscriptionRepository repository;

  SaveSubscription(this.repository);

  Future<void> call(Subscription subscription) async {
    await repository.saveSubscription(subscription);
  }
}
