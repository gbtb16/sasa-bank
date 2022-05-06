import 'package:flutter/material.dart';

class DefaultColorOptions {
  late Map<String, String> colorPreferences;

  Color primaryColor = const Color(0xff7d168c);
  Color secondColor = const Color(0xff9213a5);
  Color? widgetsColor = Colors.blueGrey[50];
  Color textColor = Colors.black87;
  Color? secondTextColor = Colors.grey[600];

  Color iconColor = Colors.white;
  Color transparent = Colors.transparent;

  Color? thirdTextColor = Colors.blueGrey[50];
  Color? enabledTextColor = Colors.green[800];
  Color? dividerColor = Colors.blueGrey[50];
}

DefaultColorOptions defaultColorOptions = DefaultColorOptions();

class DefaultPattern {
  Color primaryColor = const Color(0xff7d168c);
  Color secondColor = const Color(0xff9213a5);
}

class BluePattern {
  Color primaryColor = Colors.blue;
  Color secondColor = const Color(0xff64b5f6);
}

class RedPattern {
  Color primaryColor = const Color(0xffef5400);
  Color secondColor = const Color(0xffef5350);
}

class DarkPattern {
  Color primaryColor = const Color(0xff600f6c);
  Color secondColor = const Color(0xff7d168c);
}
