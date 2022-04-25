import 'package:flutter/material.dart';

import 'package:sasa_bank/functions/global/launch_whatsapp_function.dart';

import 'package:sasa_bank/widgets/small_widgets/rectangle_widget.dart';

class RectanglesManagement extends StatefulWidget {
  const RectanglesManagement({Key? key}) : super(key: key);

  @override
  State<RectanglesManagement> createState() => _RectanglesManagementState();
}

class _RectanglesManagementState extends State<RectanglesManagement> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RectangleWidget(
            iconName: Icons.money,
            onPressed: () {},
            title: 'Portabilidade de salário',
            subtitle:
                'Sua liberdade financeira começa com você escolhendo seu futuro.',
            buttonText: 'Conhecer'),
        RectangleWidget(
            iconName: Icons.people,
            onPressed: () {
              launchWhatsApp();
            },
            title: 'Indique seus amigos',
            subtitle:
                'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
            buttonText: 'Indicar amigos'),
        RectangleWidget(
            iconName: Icons.whatsapp,
            onPressed: () {},
            title: 'WhatsApp',
            subtitle:
                'Pagamentos seguros, rápidos e sem tarifa. A experiência é única.',
            buttonText: 'Quero conhecer'),
      ],
    );
  }
}
