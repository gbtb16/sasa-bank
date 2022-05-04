import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

ThemeData defaultTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: Colors.white,
    dividerColor: Colors.white,
    backgroundColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: defaultColorOptions.iconColor.withOpacity(0),
    ));
