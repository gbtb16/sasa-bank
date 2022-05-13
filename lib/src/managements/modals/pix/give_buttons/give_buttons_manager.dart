import 'package:flutter/material.dart';
import 'package:sasa_bank/src/managements/modals/pix/give_buttons/give_buttons_object.dart';

import 'package:sasa_bank/src/widgets/label_button_widget.dart';

class GiveButtonsManager extends StatefulWidget {
  const GiveButtonsManager({Key? key}) : super(key: key);

  @override
  State<GiveButtonsManager> createState() => _GiveButtonsManagerState();
}

class _GiveButtonsManagerState extends State<GiveButtonsManager> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 117,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemCount: giveButtons.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var iconNames = giveButtons.map((e) => e.iconName).toList();
          var labels = giveButtons.map((e) => e.label).toList();
          var functions = giveButtons.map((e) => e.onPressed).toList();

          return Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelButtonWidget(
                  iconName: iconNames[index],
                  label: labels[index],
                  onPressed: functions[index],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
