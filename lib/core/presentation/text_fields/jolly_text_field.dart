import 'package:flutter/material.dart';

import '../sizes/jolly_sizes.dart';
import '../text_styles/jolly_text_styles.dart';

class JollyTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool? enabled;

  const JollyTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    return TextFormField(
      enabled: enabled,
      autovalidateMode: autovalidateMode,
      controller: controller,
      keyboardType: keyboardType,
      cursorWidth: JollySizes.s1,
      cursorHeight: JollySizes.s20,
      obscureText: obscureText,
      validator: validator,
      style: JollyTextStyles.semiBold,
      decoration: const InputDecoration().applyDefaults(inputDecorationTheme).copyWith(prefixIcon: prefixIcon, suffixIcon: suffixIcon),
    );
  }
}
