import 'package:flutter/material.dart';

import '../../../../core/assets/jolly_assets.dart';
import '../../../../core/presentation/view/jolly_view.dart';
import '../../../../core/presentation/sizes/jolly_sizes.dart';
import '../view_model/splash_view_model.dart';

class Splash extends StatefulWidget {
  final SplashViewModel viewModel;
  const Splash({super.key, required this.viewModel});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.bind(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return JollyView(
      content: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: Image.asset(JollyAssets.splashBackgroundImage, fit: BoxFit.cover)),
            Center(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * JollySizes.s0_2),
                  Image.asset(JollyAssets.jollyCastPngLogo, width: screenWidth * JollySizes.s0_5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
