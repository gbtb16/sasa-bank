import 'package:flutter/material.dart';

import 'package:sasa_bank/src/options/default_options.dart';

ThemeData defaultTheme = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.white,
    dividerColor: Colors.white,
    backgroundColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: defaultColorOptions.iconColor.withOpacity(0),
    ));
