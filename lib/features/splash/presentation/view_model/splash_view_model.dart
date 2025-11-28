import 'package:flutter/material.dart';

import '../../../../core/durations/jolly_durations.dart';
import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../../../../core/presentation/view_model/jolly_view_model.dart';
import '../../../../core/shared/result.dart';

class SplashViewModel extends JollyViewModel {
  @override
  void bind(BuildContext context) {
    _navigateIntoApp(context);
  }

  Future<Result<void>> _navigateIntoApp(BuildContext context) async {
    await Future.delayed(JollyDurations.splashDelay);
    if (context.mounted) {
      JollyNavigation.replace(JollyRoutes.login);
    }
    return Result.success(null);
  }
}
