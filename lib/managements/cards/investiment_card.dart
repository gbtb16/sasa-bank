import 'package:flutter/material.dart';

import 'package:sasa_bank/widgets/custom_card_widget.dart';
import 'package:sasa_bank/widgets/small_widgets/colored_button_row_widget.dart';

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
          'O jeito Sasa de investir: sem asteríscos, linguagem, fácil e a partir de R\$1. Saiba Mais.',
      hasArrowFoward: true,
      hasBottomLine: true,
      externalChild: Column(children: [
        ColoredButtonRowWidget(
            onPressed: () {},
            iconName: Icons.money,
            title: 'Consultar saldo para transferência'),
        const SizedBox(height: 15),
      ]),
    );
  }
}
