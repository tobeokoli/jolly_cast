import 'package:flutter/material.dart';

import '../../../../core/presentation/view_model/jolly_view_model.dart';

class RootViewModel extends JollyViewModel {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void bind(BuildContext context) {}
}
