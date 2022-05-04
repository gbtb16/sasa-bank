import 'package:flutter/material.dart';

import 'package:sasa_bank/managements/rectangles_management.dart';
import 'package:sasa_bank/widgets/custom_card_widget.dart';

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
      hasBottomLine: false,
      externalChild: Column(children: const [
        SizedBox(height: 10),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(left: 25),
              child: RectanglesManagement(),
            )),
        SizedBox(height: 20),
      ]),
    );
  }
}
