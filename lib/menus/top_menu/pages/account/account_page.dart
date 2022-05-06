import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sasa_bank/areas/colored_safe_area.dart';
import 'package:sasa_bank/menus/top_menu/pages/account/tiles/tiles_manager.dart';
import 'package:sasa_bank/options/default_options.dart';

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
      color: Colors.blueGrey[50],
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: defaultColorOptions.textColor,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: FittedBox(
                          child: CircleAvatar(
                            backgroundColor: defaultColorOptions.secondColor,
                            child: Icon(
                              Icons.person_outlined,
                              color: defaultColorOptions.iconColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Gabriel',
                        style: TextStyle(
                          color: defaultColorOptions.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(children: const [
                    Expanded(
                      child: Text(
                        'Agência 0001 • Conta 00000000-01\nBanco 0001 • Sasa Bank - Instituição de Pagamento',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ]),
                ]),
              ),
              const TilesManager(),
            ]),
          ),
        ),
      ),
    );
  }
}
