import 'package:flutter/material.dart';

import '../sizes/jolly_sizes.dart';
import '../text_styles/jolly_text_styles.dart';

class JollyPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool? enabled;
  final bool? showLoading;

  const JollyPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = JollySizes.s51,
    this.width = double.infinity,
    this.backgroundColor,
    this.foregroundColor,
    this.enabled = true,
    this.showLoading = false,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
        minimumSize: Size(width ?? double.infinity, height ?? JollySizes.s51),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JollySizes.s22)),
      ),
      onPressed: enabled == true ? onPressed : null,
      child: showLoading == true ? const CircularProgressIndicator.adaptive() : Text(text, style: JollyTextStyles.bold, textAlign: TextAlign.center),
    );
  }
}
