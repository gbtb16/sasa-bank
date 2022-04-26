import 'package:flutter/material.dart';

class DefaultColorOptions {
  late Map<String, String> colorPreferences;

  Color primaryColor = const Color(0xff7d168c);
  Color secondColor = const Color(0xff9213a5);
  Color textColor = Colors.black87;
  Color? secondTextColor = Colors.black45;

  Color iconColor = Colors.white;
  Color transparent = Colors.transparent;

  Color? thirdTextColor = Colors.grey[300];
  Color? enabledTextColor = Colors.green[800];
  Color? dividerColor = Colors.grey[200];
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
