import 'package:flutter/material.dart';

import 'package:sasa_bank/src/managements/cards/discover_more/rectangles/rectangles_management.dart';
import 'package:sasa_bank/src/widgets/custom_card_widget.dart';

class DiscoverMoreCard extends StatefulWidget {
  const DiscoverMoreCard({Key? key}) : super(key: key);

  @override
  State<DiscoverMoreCard> createState() => _DiscoverMoreCardState();
}

class _DiscoverMoreCardState extends State<DiscoverMoreCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      title: 'Descubra mais',
      hasArrowFoward: false,
      externalChild: Column(children: const [
        SizedBox(height: 10),
        RectanglesManagement(),
        SizedBox(height: 20),
      ]),
    );
  }
}
