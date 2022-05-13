import 'package:flutter/material.dart';

class Button {
  final IconData iconName;
  final String label;
  late Function onPressed;

  Button(
      {required this.iconName, required this.label, required this.onPressed});
}

List<Button> giveButtons = [
  Button(
    iconName: Icons.people_alt_outlined,
    label: 'Cobrar',
    onPressed: () {},
  ),
  Button(
    iconName: Icons.deblur,
    label: 'Depositar',
    onPressed: () {},
  ),
];
