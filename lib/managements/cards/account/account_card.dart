import 'package:flutter/material.dart';

import 'package:sasa_bank/components/colored_button_row.dart';
import 'package:sasa_bank/components/interactive_colored_row.dart';
import 'package:sasa_bank/managements/cards/account/buttons/buttons_manager.dart';
import 'package:sasa_bank/menus/top_menu/top_menu.dart';
import 'package:sasa_bank/widgets/custom_card_widget.dart';
import 'package:sasa_bank/options/default_options.dart';
import 'package:sasa_bank/managements/global/global_variables.dart' as globals;

class AccountCard extends StatefulWidget {
  const AccountCard({Key? key}) : super(key: key);

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  final globals.Visibility _visibility = visibility;

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      title: 'Conta',
      hasArrowFoward: true,
      internalChild: Column(
        children: [
          const SizedBox(height: 7),
          Row(
            children: [
              AnimatedBuilder(
                  animation: _visibility,
                  builder: (context, _) {
                    return Text(
                      _visibility.getIsVisible() ? 'R\$ 10.002,09' : '••••',
                      style: TextStyle(
                        color: defaultColorOptions.textColor,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  })
            ],
          )
        ],
      ),
      externalChild: Column(
        children: [
          const SizedBox(height: 35),
          const ButtonsManager(),
          const SizedBox(height: 15),
          ColoredButtonRow(
            iconName: Icons.credit_card,
            title: 'Meus cartões',
            onPressed: () {},
          ),
          const SizedBox(height: 25),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    InteractiveColoredRow(
                      text: 'Conheça ',
                      coloredText: 'SasaBank Vida:\n',
                      moreText: 'um seguro simples e que cabe no seu bolso.',
                    ),
                    InteractiveColoredRow(
                        text: 'Salve seus amigos da\nburocracia. ',
                        coloredText:
                            'Faça um convite através de nosso app para local de sua escolha.'),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
