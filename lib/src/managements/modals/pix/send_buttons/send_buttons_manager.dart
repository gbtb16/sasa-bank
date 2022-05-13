import 'package:flutter/material.dart';

import 'package:sasa_bank/src/managements/modals/pix/send_buttons/send_buttons_object.dart';
import 'package:sasa_bank/src/options/default_options.dart';

class SendButtonsManager extends StatefulWidget {
  const SendButtonsManager({Key? key}) : super(key: key);

  @override
  State<SendButtonsManager> createState() => _SendButtonsManagerState();
}

class _SendButtonsManagerState extends State<SendButtonsManager> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 117,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemCount: sendButtons.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var iconNames = sendButtons.map((e) => e.iconName).toList();
          var labels = sendButtons.map((e) => e.label).toList();
          var functions = sendButtons.map((e) => e.onPressed).toList();

          return Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    functions[index];
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: defaultColorOptions.widgetsColor,
                    child: Icon(
                      iconNames[index],
                      color: defaultColorOptions.textColor,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  labels[index],
                  style: TextStyle(
                    color: defaultColorOptions.textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
