import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class TopMenu extends StatefulWidget {
  final String name;
  final BoxDecoration? boxDecoration;
  final Color? backgroundColorOfAvatar;

  const TopMenu(
      {Key? key,
      required this.name,
      required this.boxDecoration,
      required this.backgroundColorOfAvatar})
      : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    final String _name = widget.name;
    final BoxDecoration? _boxDecoration = widget.boxDecoration;
    final Color? _backgroundColorOfAvatar = widget.backgroundColorOfAvatar;

    return Container(
      width: double.infinity,
      decoration: _boxDecoration,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FittedBox(
                    child: CircleAvatar(
                      backgroundColor: _backgroundColorOfAvatar,
                      child: Icon(
                        Icons.person,
                        color: defaultColorOptions.iconColor,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/app/v2/imgs/sasa_letters.png',
                  width: 50,
                  height: 24,
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Text(
                  'Olá, $_name',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: defaultColorOptions.iconColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
