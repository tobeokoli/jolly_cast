import 'dart:async';

import 'package:flutter/material.dart';

import '../../error/app_error.dart';

abstract class JollyViewModel extends ChangeNotifier {
  final StreamController<AppError> _errorController = StreamController<AppError>.broadcast();
  Stream<AppError> get errorStream => _errorController.stream;

  void bind(BuildContext context);

  @override
  void dispose() {
    _errorController.close();
    super.dispose();
  }

  void addError(AppError error) {
    _errorController.add(error);
  }

  void listenForError(BuildContext context) {
    errorStream.listen((error) {});
  }
}
