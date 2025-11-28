import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';
import 'package:jolly_cast/core/presentation/sizes/jolly_sizes.dart';
import 'package:jolly_cast/features/root/presentation/constants/jolly_nav_bar_constants.dart';

import '../../../../core/assets/jolly_assets.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';

class JollyBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const JollyBottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bottomNotchHeight = MediaQuery.of(context).viewPadding.bottom;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: JollySizes.s50, vertical: JollySizes.s15),
      decoration: BoxDecoration(color: scheme.secondaryContainer),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JollyBottomNavBarItem(
                iconPath: JollyAssets.discoverIcon,
                label: JollyStrings.discover,
                isSelected: currentIndex == JollyNavBarConstants.discoveryIndex,
                onTap: () => onTap(JollyNavBarConstants.discoveryIndex.toInt()),
              ),
              JollyBottomNavBarItem(
                iconPath: JollyAssets.categoriesIcon,
                label: JollyStrings.categories,
                isSelected: currentIndex == JollyNavBarConstants.categoriesIndex,
                onTap: () => onTap(JollyNavBarConstants.categoriesIndex.toInt()),
              ),
              JollyBottomNavBarItem(
                iconPath: JollyAssets.libraryIcon,
                label: JollyStrings.yourLibrary,
                isSelected: currentIndex == JollyNavBarConstants.libraryIndex,
                onTap: () => onTap(JollyNavBarConstants.libraryIndex.toInt()),
              ),
            ],
          ),
          SizedBox(height: bottomNotchHeight),
        ],
      ),
    );
  }
}

class JollyBottomNavBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const JollyBottomNavBarItem({super.key, required this.iconPath, required this.label, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: JollySizes.s24,
            height: JollySizes.s24,
            colorFilter: isSelected
                ? ColorFilter.mode(scheme.onSecondaryContainer, BlendMode.srcIn)
                : ColorFilter.mode(scheme.onSecondaryContainer.withAlpha(JollySizes.s77.toInt()), BlendMode.srcIn),
          ),
          SizedBox(height: JollySizes.s6),
          Text(
            label,
            style: isSelected
                ? JollyTextStyles.bold.copyWith(color: scheme.onSecondaryContainer)
                : JollyTextStyles.medium.copyWith(color: scheme.onSecondaryContainer.withAlpha(JollySizes.s77.toInt())),
          ),
        ],
      ),
    );
  }
}
