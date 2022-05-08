import 'package:flutter/material.dart';

class DefaultColorOptions extends ChangeNotifier {
  Color _primaryColor = const Color(0xff7d168c);
  Color _secondColor = const Color(0xff9213a5);
  Color _widgetsColor = const Color(0xfff0f1f5);
  Color _textColor = Colors.black87;
  Color? _secondTextColor = Colors.grey[600];

  Color _iconColor = Colors.white;
  final Color _transparent = Colors.transparent;

  Color _thirdTextColor = const Color(0xfff0f1f5);
  Color? _enabledTextColor = Colors.green[800];
  Color _dividerColor = const Color(0xfff0f1f5);

  Color get primaryColor => _primaryColor;
  Color get secondColor => _secondColor;
  Color get widgetsColor => _widgetsColor;
  Color get textColor => _textColor;
  Color? get secondTextColor => _secondTextColor;
  Color get iconColor => _iconColor;
  Color get transparent => _transparent;
  Color get thirdTextColor => _thirdTextColor;
  Color? get enabledTextColor => _enabledTextColor;
  Color get dividerColor => _dividerColor;

  set primaryColor(Color color) {
    _primaryColor = color;
    notifyListeners();
  }

  set secondColor(Color color) {
    _secondColor = color;
    notifyListeners();
  }

  set widgetsColor(Color color) {
    _widgetsColor = color;
    notifyListeners();
  }

  set textColor(Color color) {
    _textColor = color;
    notifyListeners();
  }

  set secondTextColor(Color? color) {
    _secondTextColor = color;
    notifyListeners();
  }

  set iconColor(Color color) {
    _iconColor = color;
    notifyListeners();
  }

  set thirdTextColor(Color color) {
    _thirdTextColor = color;
    notifyListeners();
  }

  set enabledTextColor(Color? color) {
    _enabledTextColor = color;
    notifyListeners();
  }

  set dividerColor(Color color) {
    _dividerColor = color;
    notifyListeners();
  }
}

DefaultColorOptions defaultColorOptions = DefaultColorOptions();
