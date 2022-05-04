import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sasa_bank/areas/colored_safe_area.dart';
import 'package:sasa_bank/options/default_options.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timeToChangeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  timeToChangeScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  initScreen(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarColor: defaultColorOptions.primaryColor,
          systemNavigationBarIconBrightness: Brightness.light),
    );

    return ColoredSafeArea(
      color: defaultColorOptions.primaryColor,
      child: Scaffold(
        body: Container(
            color: defaultColorOptions.primaryColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Center(
                  child: Image.asset('assets/app/v2/imgs/sasa_letters.png',
                      width: 220, height: 180),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            CircularProgressIndicator(
                              color: defaultColorOptions.iconColor,
                              strokeWidth: 1.0,
                            ),
                            const SizedBox(height: 100)
                          ])),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
