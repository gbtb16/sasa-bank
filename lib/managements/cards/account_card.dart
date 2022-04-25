import 'package:flutter/material.dart';
import 'package:sasa_bank/widgets/small_widgets/interactive_colored_row_widget.dart';

import 'package:sasa_bank/managements/label_floating_button_management.dart';
import 'package:sasa_bank/widgets/small_widgets/colored_button_row_widget.dart';
import 'package:sasa_bank/widgets/custom_card_widget.dart';
import 'package:sasa_bank/options/default_options.dart';

class AccountCard extends StatefulWidget {
  const AccountCard({Key? key}) : super(key: key);

  @override
  State<AccountCard> createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      title: 'Conta',
      hasArrowFoward: true,
      hasBottomLine: true,
      internalChild: Column(
        children: [
          Row(
            children: [
              Text(
                'R\$ 10.002,09',
                style: TextStyle(
                  color: defaultColorOptions.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
      externalChild: Column(
        children: [
          const SizedBox(height: 18),
          const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: LabelFloatingButtonManagement(),
            ),
          ),
          const SizedBox(height: 20),
          const ColoredButtonRowWidget(
            iconName: Icons.credit_card,
            title: 'Meus cartões',
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
                    InteractiveColoredRowWidget(
                      text: 'Conheça ',
                      boldText: 'SasaBank Vida:\n',
                      moreText: 'um seguro simples e que cabe no seu bolso.',
                    ),
                    InteractiveColoredRowWidget(
                        text: 'Salve seus amigos da\nburocracia. ',
                        boldText:
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
