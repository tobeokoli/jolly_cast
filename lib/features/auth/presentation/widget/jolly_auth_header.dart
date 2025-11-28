import 'package:flutter/material.dart';

import '../../../../core/assets/jolly_assets.dart';
import '../../../../core/presentation/sizes/jolly_sizes.dart';

class JollyAuthHeader extends StatelessWidget {
  final double? logoWidth;
  final double? logoHeight;
  const JollyAuthHeader({super.key, this.logoWidth = JollySizes.s90, this.logoHeight = JollySizes.s40});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(),
      child: Row(
        children: [Image.asset(JollyAssets.jollyAuthLogo, width: logoWidth, height: logoHeight)],
      ),
    );
  }
}
