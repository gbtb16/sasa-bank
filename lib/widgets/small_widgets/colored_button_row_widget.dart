import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class ColoredButtonRowWidget extends StatelessWidget {
  final IconData? iconName;
  final String title;
  final String? secondTitle;
  final Color? backgroundColor;

  const ColoredButtonRowWidget({
    Key? key,
    this.iconName,
    required this.title,
    this.secondTitle,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _hasIcon;
    final bool _hasSecondTitle;

    if (iconName == null) {
      _hasIcon = false;
    } else {
      _hasIcon = true;
    }

    if (secondTitle == null) {
      _hasSecondTitle = false;
    } else {
      _hasSecondTitle = true;
    }

    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(children: [
            _hasIcon ? Icon(iconName, color: Colors.white) : Container(),
            _hasIcon
                ? const Padding(padding: EdgeInsets.only(left: 15))
                : Container(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: TextStyle(
                        color: defaultColorOptions.iconColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  _hasSecondTitle
                      ? Text(secondTitle!,
                          style: TextStyle(
                            color: defaultColorOptions.iconColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ))
                      : const SizedBox(height: 0),
                ],
              ),
            ),
          ]),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            backgroundColor: MaterialStateProperty.all<Color?>(
                backgroundColor ?? defaultColorOptions.primaryColor),
            elevation: MaterialStateProperty.all<double?>(0),
            padding: MaterialStateProperty.all<EdgeInsets?>(
                const EdgeInsets.only(
                    top: 15, left: 20, right: 20, bottom: 15)),
            foregroundColor: MaterialStateProperty.all<Color?>(
                backgroundColor ?? defaultColorOptions.primaryColor),
          ),
        ));
  }
}
