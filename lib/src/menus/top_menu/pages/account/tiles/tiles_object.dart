import 'package:flutter/material.dart';

class Tile {
  final IconData leading;
  final String title;
  late Function onPressed;

  Tile({required this.leading, required this.title, required this.onPressed});
}

List<Tile> tiles = [
  Tile(
    leading: Icons.help_outline,
    title: 'Me ajuda',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.person_outline,
    title: 'Meus dados',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.newspaper,
    title: 'Informe de rendimentos',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.swipe_outlined,
    title: 'Configurar app',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.security,
    title: 'Segurança',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.pix_outlined,
    title: 'Configurar chaves Pix',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.store_mall_directory_outlined,
    title: 'Pedir conta PJ',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.notifications_none,
    title: 'Notificações',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.money_rounded,
    title: 'Configurar conta',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.credit_card,
    title: 'Configurar cartão',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.stacked_line_chart_sharp,
    title: 'Configurar perfil de Investimentos',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.info_outline,
    title: 'Sobre',
    onPressed: () {},
  ),
  Tile(
    leading: Icons.exit_to_app,
    title: 'Sair do aplicativo',
    onPressed: () {},
  ),
];
