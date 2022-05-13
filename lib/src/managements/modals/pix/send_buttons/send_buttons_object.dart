import 'package:flutter/material.dart';

class Button {
  final IconData iconName;
  final String label;
  late Function onPressed;

  Button(
      {required this.iconName, required this.label, required this.onPressed});
}

List<Button> sendButtons = [
  Button(
    iconName: Icons.transfer_within_a_station_rounded,
    label: 'Transferir',
    onPressed: () {},
  ),
  Button(
    iconName: Icons.copy_outlined,
    label: 'Pix Copia e Cola',
    onPressed: () {},
  ),
  Button(
    iconName: Icons.qr_code_rounded,
    label: 'Ler QR Code',
    onPressed: () {},
  ),
];
