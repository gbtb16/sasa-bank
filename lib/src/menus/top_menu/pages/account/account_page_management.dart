import 'package:flutter/material.dart';

import 'package:sasa_bank/src/menus/top_menu/pages/account/tiles/tiles_manager.dart';
import 'package:sasa_bank/src/options/default_options.dart';

class AccountPageManagement extends StatefulWidget {
  const AccountPageManagement({Key? key}) : super(key: key);

  @override
  State<AccountPageManagement> createState() => _AccountPageManagementState();
}

class _AccountPageManagementState extends State<AccountPageManagement> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          const SizedBox(height: 25),
          Container(
            color: defaultColorOptions.widgetsColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
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
                const SizedBox(height: 3),
              ]),
            ),
          ),
          const TilesManager(),
        ]),
      ),
    );
  }
}
