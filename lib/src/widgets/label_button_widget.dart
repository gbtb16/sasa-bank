import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class LabelButtonWidget extends StatelessWidget {
  final Function onPressed;
  final IconData iconName;
  final String label;
  final Color? backgroundColor;
  final Color? iconColor;

  const LabelButtonWidget({
    Key? key,
    required this.onPressed,
    required this.iconName,
    required this.label,
    this.backgroundColor,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              onPressed();
            },
            child: CircleAvatar(
              radius: 35,
              backgroundColor: defaultColorOptions.widgetsColor,
              child: Icon(
                iconName,
                color: iconColor ?? defaultColorOptions.textColor,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: defaultColorOptions.textColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
