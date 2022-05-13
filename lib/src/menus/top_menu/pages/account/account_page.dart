import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sasa_bank/src/areas/colored_safe_area.dart';
import 'package:sasa_bank/src/menus/top_menu/pages/account/account_page_management.dart';
import 'package:sasa_bank/src/options/default_options.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: defaultColorOptions.transparent,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark),
    );

    return ColoredSafeArea(
      color: defaultColorOptions.dividerColor,
      child: Scaffold(
        backgroundColor: defaultColorOptions.transparent,
        body: const AccountPageManagement(),
      ),
    );
  }
}
