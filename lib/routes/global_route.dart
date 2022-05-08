import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:sasa_bank/options/scrolling_options/behavior_standard.dart';
import 'package:sasa_bank/menus/top_menu/pages/account/account_page.dart';
import 'package:sasa_bank/options/themes.dart';
import 'package:sasa_bank/screens/home_screen/home_screen.dart';
import 'package:sasa_bank/screens/splash_screen/splash_screen.dart';

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
      themeMode: ThemeMode.light,
      theme: defaultTheme,
      darkTheme: defaultTheme,
      color: Colors.white,
      highContrastTheme: ThemeData.light(),
      highContrastDarkTheme: ThemeData.light(),
      builder: (context, child) {
        return ScrollConfiguration(behavior: BehaviorStandard(), child: child!);
      },
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/account': (context) => const AccountPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/home':
            return PageTransition(
                child: const HomeScreen(), type: PageTransitionType.fade);

          case '/account':
            return PageTransition(
                child: const AccountPage(),
                type: PageTransitionType.bottomToTop);

          default:
            return null;
        }
      },
    );
  }
}
