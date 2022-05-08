import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class TopBar extends StatelessWidget {
  final IconData? secondIconName;

  const TopBar({
    Key? key,
    this.secondIconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? hasSecondIcon;

    if (secondIconName != null) {
      hasSecondIcon = true;
    } else {
      hasSecondIcon = false;
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 25,
        right: 25,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              color: defaultColorOptions.secondTextColor,
              size: 25,
            ),
          ),
          hasSecondIcon
              ? Icon(
                  secondIconName,
                  color: defaultColorOptions.secondTextColor,
                  size: 25,
                )
              : Container(),
        ],
      ),
    );
  }
}
