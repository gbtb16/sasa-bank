library globals;

import 'package:flutter/material.dart';

class Visibility extends ChangeNotifier {
  bool _isVisible = true;

  void setIsVisible(bool value) {
    _isVisible = value;
    notifyListeners();
  }

  bool getIsVisible() {
    return _isVisible;
  }
}
