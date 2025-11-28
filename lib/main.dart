import 'package:flutter/material.dart';
import 'package:jolly_cast/core/di/di.dart';

import 'core/keys/jolly_keys.dart';
import 'core/navigation/navigation.dart';
import 'core/navigation/router.dart';
import 'core/presentation/strings/jolly_strings.dart';
import 'core/theme/jolly_theme.dart';
import 'features/podcast_player/presentation/view_model/jolly_podcast_player_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  JollyNavigation.init(JollyRouter.router);
  runApp(const JollyCastApp());
}

class JollyCastApp extends StatefulWidget {
  const JollyCastApp({super.key});

  @override
  State<JollyCastApp> createState() => _JollyCastAppState();
}

class _JollyCastAppState extends State<JollyCastApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getIt<JollyPodcastPlayerViewModel>().bind(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: JollyStrings.appName,
      scaffoldMessengerKey: jollyScaffoldMessengerKey,
      routerConfig: JollyRouter.router,
      theme: JollyTheme.dark,
    );
  }
}
