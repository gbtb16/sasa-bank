import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sasa_bank/src/areas/colored_safe_area.dart';
import 'package:sasa_bank/src/screens/home_screen/home_screen_controller.dart';
import 'package:sasa_bank/src/options/default_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: defaultColorOptions.transparent,
        systemNavigationBarDividerColor: defaultColorOptions.transparent,
        systemNavigationBarColor: defaultColorOptions.iconColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return ColoredSafeArea(
      color: defaultColorOptions.primaryColor,
      child: Scaffold(
        backgroundColor: defaultColorOptions.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Container(
                    color: defaultColorOptions.primaryColor,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: defaultColorOptions.iconColor,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                HomeScreenController(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
