import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sasa_bank/areas/colored_safe_area.dart';
import 'package:sasa_bank/managements/global/home_screen_management.dart';
import 'package:sasa_bank/options/default_options.dart';

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
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark),
    );

    return ColoredSafeArea(
      color: defaultColorOptions.primaryColor,
      child: Scaffold(
        backgroundColor: defaultColorOptions.primaryColor,
        body: Column(
          children: const [
            HomeScreenManagement(),
          ],
        ),
      ),
    );
  }
}
