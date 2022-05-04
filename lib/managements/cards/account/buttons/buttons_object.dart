import 'package:flutter/material.dart';
import 'package:sasa_bank/functions/global/launch_whatsapp_function.dart';

class Button {
  final String heroTag;
  final IconData icon;
  final String title;
  late Function onPressed;

  Button({
    required this.heroTag,
    required this.icon,
    required this.title,
    required this.onPressed,
  });
}

List<Button> buttons = [
  Button(
    heroTag: 'button-pix',
    icon: Icons.pix,
    title: 'Área Pix',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-pay',
    icon: Icons.shopping_basket_rounded,
    title: 'Pagar',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-transfer',
    icon: Icons.transfer_within_a_station,
    title: 'Transferir',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-deposit',
    icon: Icons.deblur,
    title: 'Depositar',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-cellphone-recharge',
    icon: Icons.smartphone,
    title: 'Recarga de celular',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-charge',
    icon: Icons.people,
    title: 'Cobrar',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-donate',
    icon: Icons.money,
    title: 'Doar',
    onPressed: () {},
  ),
  Button(
    heroTag: 'button-invite-friends',
    icon: Icons.whatsapp,
    title: 'Convidar amigos',
    onPressed: () {
      launchWhatsApp();
    },
  ),
  Button(
    heroTag: 'button-internacional-transfer',
    icon: Icons.transform,
    title: 'Transferir\nInternac.',
    onPressed: () {},
  ),
];
