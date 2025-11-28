import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jolly_cast/core/presentation/text_styles/jolly_text_styles.dart';

import '../../error/app_error.dart';
import '../../keys/jolly_keys.dart';
import '../sizes/jolly_sizes.dart';
import '../strings/jolly_strings.dart';

mixin JollySnackbarsMixin {
  void showErrorSnackbar(AppError error, {String? title}) {
    log(title.toString());
    jollyScaffoldMessengerKey.currentState?.removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Row(
        children: [
          Icon(Icons.error, color: Colors.red.shade700, size: JollySizes.s26),
          const SizedBox(width: JollySizes.s13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title ?? error.code ?? JollyStrings.EMPTY, style: JollyTextStyles.semiBold),
                Text(error.message, style: JollyTextStyles.regular),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red.shade100,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
    );
    jollyScaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }
}
