import 'package:flutter/material.dart';

import 'package:sasa_bank/screens/loading_screen.dart';
import 'package:sasa_bank/widgets/small_widgets/behavior_standard_widget.dart';
import 'package:sasa_bank/options/default_options.dart';

class GlobalRoute extends StatefulWidget {
  const GlobalRoute({Key? key}) : super(key: key);

  @override
  State<GlobalRoute> createState() => _GlobalRouteState();
}

class _GlobalRouteState extends State<GlobalRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SasaBank',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        dividerColor: Colors.white,
        backgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          splashColor: defaultColorOptions.iconColor.withOpacity(0),
        ),
      ),
      darkTheme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        dividerColor: Colors.white,
        backgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          splashColor: defaultColorOptions.iconColor.withOpacity(0),
        ),
      ),
      color: Colors.white,
      highContrastDarkTheme: ThemeData.light(),
      themeMode: ThemeMode.light,
      highContrastTheme: ThemeData.light(),
      builder: (context, child) {
        return ScrollConfiguration(
            behavior: BehaviorStandardWidget(), child: child!);
      },
      home: const LoadingScreen(),
    );
  }
}
