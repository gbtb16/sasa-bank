import 'package:flutter/material.dart';

import 'package:sasa_bank/src/functions/global/launch_whatsapp_function.dart';
import 'package:sasa_bank/src/functions/modals/modal_with_background_opacity.dart';
import 'package:sasa_bank/src/managements/modals/pix/pix_page.dart';

class Button {
  final IconData icon;
  final String title;
  late Function onPressed;

  Button({
    required this.icon,
    required this.title,
    required this.onPressed,
  });
}

List<Button> buttons = [
  Button(
    icon: Icons.pix,
    title: 'Área Pix',
    onPressed: (context) {
      showModalButtonSheetWithBackgroundOpacity(context, const PixPage());
    },
  ),
  Button(
    icon: Icons.shopping_basket_outlined,
    title: 'Pagar',
    onPressed: () {},
  ),
  Button(
    icon: Icons.transfer_within_a_station,
    title: 'Transferir',
    onPressed: () {},
  ),
  Button(
    icon: Icons.deblur,
    title: 'Depositar',
    onPressed: () {},
  ),
  Button(
    icon: Icons.smartphone,
    title: 'Recarga de\ncelular',
    onPressed: () {},
  ),
  Button(
    icon: Icons.people_alt_outlined,
    title: 'Cobrar',
    onPressed: () {},
  ),
  Button(
    icon: Icons.money_rounded,
    title: 'Doar',
    onPressed: () {},
  ),
  Button(
    icon: Icons.whatsapp,
    title: 'Convidar\namigos',
    onPressed: () {
      launchWhatsApp();
    },
  ),
  Button(
    icon: Icons.transform,
    title: 'Transferir\nInternac.',
    onPressed: () {},
  ),
];
