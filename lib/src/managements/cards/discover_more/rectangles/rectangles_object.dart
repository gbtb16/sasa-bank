import 'package:flutter/material.dart';

import 'package:sasa_bank/functions/global/launch_whatsapp_function.dart';

class RectangleObject {
  final IconData iconName;
  final String title;
  final String subtitle;
  final String buttonLabel;
  late Function onPressed;

  RectangleObject(
      {required this.iconName,
      required this.title,
      required this.subtitle,
      required this.buttonLabel,
      required this.onPressed});
}

List<RectangleObject> rectangles = [
  RectangleObject(
    iconName: Icons.money,
    title: 'Portabilidade de salário',
    subtitle: 'Sua liberdade financeira começa com você escolhendo seu futuro.',
    buttonLabel: 'Conhecer',
    onPressed: () {},
  ),
  RectangleObject(
      iconName: Icons.people_alt_outlined,
      title: 'Indique seus amigos',
      subtitle:
          'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
      buttonLabel: 'Indicar amigos',
      onPressed: () {
        launchWhatsApp();
      }),
  RectangleObject(
    iconName: Icons.whatsapp,
    title: 'WhatsApp',
    subtitle:
        'Pagamentos seguros, rápidos e sem tarifa. A experiência é única.',
    buttonLabel: 'Quero conhecer',
    onPressed: () {},
  ),
];
