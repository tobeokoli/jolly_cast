import 'package:flutter/material.dart';

class JollyView extends StatelessWidget {
  final Widget content;
  final VoidCallback? onTap;
  const JollyView({super.key, required this.content, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        onTap?.call();
      },
      child: content,
    );
  }
}
