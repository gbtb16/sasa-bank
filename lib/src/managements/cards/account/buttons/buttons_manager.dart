import 'package:flutter/material.dart';

import 'package:sasa_bank/src/managements/cards/account/buttons/buttons_object.dart';
import 'package:sasa_bank/src/widgets/label_button_widget.dart';

class ButtonsManager extends StatefulWidget {
  const ButtonsManager({Key? key}) : super(key: key);

  @override
  State<ButtonsManager> createState() => _ButtonsManagerState();
}

class _ButtonsManagerState extends State<ButtonsManager> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 125,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 30, right: 25),
          shrinkWrap: true,
          itemCount: buttons.length,
          itemBuilder: (context, index) {
            var icons = buttons.map((e) => e.icon).toList();
            var titles = buttons.map((e) => e.title).toList();
            var functions = buttons.map((e) => e.onPressed).toList();

            return LabelButtonWidget(
              iconName: icons[index],
              label: titles[index],
              onPressed: () {
                functions[index](context);
              },
            );
          }),
    );
  }
}
