import 'package:flutter/material.dart';

import 'package:sasa_bank/src/components/useful/colored_button.dart';
import 'package:sasa_bank/src/widgets/custom_card_widget.dart';

class InvestimentCard extends StatefulWidget {
  const InvestimentCard({Key? key}) : super(key: key);

  @override
  State<InvestimentCard> createState() => _InvestimentCardState();
}

class _InvestimentCardState extends State<InvestimentCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      iconName: Icons.stacked_line_chart_sharp,
      title: 'Investimentos',
      subtitle:
          'O jeito Sasa de investir: sem asteríscos, linguagem fácil e a partir de R\$1. Saiba Mais.',
      hasArrowFoward: true,
      externalChild: Column(children: [
        ColoredButton(
            onPressed: () {},
            iconName: Icons.money_rounded,
            title: 'Consultar saldo para transferência'),
        const SizedBox(height: 15),
      ]),
    );
  }
}
