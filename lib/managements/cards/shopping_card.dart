import 'package:flutter/material.dart';

import 'package:sasa_bank/widgets/custom_card_widget.dart';

class ShoppingCard extends StatefulWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      iconName: Icons.shopping_bag_outlined,
      title: 'Shopping',
      subtitle: 'Vantagens exclusivas das nossas marcas preferidas',
      hasArrowFoward: true,
      hasBottomLine: true,
    );
  }
}
