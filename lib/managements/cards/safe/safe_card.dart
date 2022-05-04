import 'package:flutter/material.dart';

import 'package:sasa_bank/components/colored_button_row_component.dart';
import 'package:sasa_bank/widgets/custom_card_widget.dart';

class SafeCard extends StatefulWidget {
  const SafeCard({Key? key}) : super(key: key);

  @override
  State<SafeCard> createState() => _SafeCardState();
}

class _SafeCardState extends State<SafeCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      iconName: Icons.umbrella,
      title: 'Seguros',
      subtitle: 'Proteção para você cuidar do que importa',
      hasArrowFoward: false,
      hasBottomLine: true,
      externalChild: Column(children: [
        ColoredButtonRowComponent(
          onPressed: () {},
          iconName: Icons.favorite_border,
          title: 'Seguro vida',
          secondTitle: 'Conhecer',
        ),
        const SizedBox(height: 15)
      ]),
    );
  }
}
