import 'package:flutter/material.dart';

import 'package:sasa_bank/src/components/useful/colored_button.dart';
import 'package:sasa_bank/src/widgets/custom_card_widget.dart';

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
      externalChild: Column(children: [
        ColoredButton(
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
