import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  late SharedPreferences _prefs;

  Map<String, int> colorPreferences = {
    'primaryColor': 0xff7d168c,
    'secondColor': 0xff9213a5,
  };

  AppSettings() {
    _startSettings();
  }

  _startSettings() async {
    await _startPreferences();
    await _readColorPreferences();
  }

  Future<void> _startPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  _readColorPreferences() {
    final primaryColor = _prefs.getInt('primaryColor') ?? 0xff7d168c;
    final secondColor = _prefs.getInt('secondColor') ?? 0xff9213a5;

    colorPreferences = {
      'primaryColor': primaryColor,
      'secondColor': secondColor
    };

    notifyListeners();
  }

  setColorPreferences(int primaryColor, int secondColor) async {
    await _prefs.setInt('primaryColor', primaryColor);
    await _prefs.setInt('secondColor', secondColor);
    await _readColorPreferences();
  }
}
