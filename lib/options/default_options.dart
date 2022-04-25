import 'package:flutter/material.dart';

class DefaultColorOptions {
  final Color primaryColor = const Color(0xff7d168c);
  final Color secondColor = const Color(0xff9213a5);
  final Color textColor = Colors.black87;
  final Color? secondTextColor = Colors.black45;

  final Color iconColor = Colors.white;
  final Color transparent = Colors.transparent;

  final Color? thirdTextColor = Colors.grey[300];
  final Color? enabledTextColor = Colors.green[800];
  final Color? dividerColor = Colors.grey[200];
}

class DarkColorOptions {
  final Color primaryColor = const Color(0xff600f6c);
  final Color secondColor = const Color(0xff7d168c);
}

DefaultColorOptions defaultColorOptions = DefaultColorOptions();
