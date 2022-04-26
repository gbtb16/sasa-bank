import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class ColoredButtonRowComponent extends StatefulWidget {
  final IconData? iconName;
  final String title;
  final String? secondTitle;
  final Color? backgroundColor;
  final Function onPressed;

  const ColoredButtonRowComponent(
      {Key? key,
      this.iconName,
      required this.title,
      this.secondTitle,
      this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<ColoredButtonRowComponent> createState() =>
      _ColoredButtonRowComponentState();
}

class _ColoredButtonRowComponentState extends State<ColoredButtonRowComponent> {
  @override
  Widget build(BuildContext context) {
    final _iconName = widget.iconName;
    final _title = widget.title;
    final _secondTitle = widget.secondTitle;
    final _backgroundColor = widget.backgroundColor;
    final _onPressed = widget.onPressed;

    final bool _hasIcon;
    final bool _hasSecondTitle;

    if (_iconName == null) {
      _hasIcon = false;
    } else {
      _hasIcon = true;
    }

    if (_secondTitle == null) {
      _hasSecondTitle = false;
    } else {
      _hasSecondTitle = true;
    }

    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ElevatedButton(
          onPressed: () {
            _onPressed();
          },
          child: Row(children: [
            _hasIcon ? Icon(_iconName, color: Colors.white) : Container(),
            _hasIcon
                ? const Padding(padding: EdgeInsets.only(left: 15))
                : Container(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_title,
                      style: TextStyle(
                        color: defaultColorOptions.iconColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      )),
                  _hasSecondTitle
                      ? Text(_secondTitle!,
                          style: TextStyle(
                            color: defaultColorOptions.iconColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
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
                _backgroundColor ?? defaultColorOptions.primaryColor),
            elevation: MaterialStateProperty.all<double?>(0),
            padding: MaterialStateProperty.all<EdgeInsets?>(
                const EdgeInsets.only(
                    top: 15, left: 20, right: 20, bottom: 15)),
            foregroundColor: MaterialStateProperty.all<Color?>(
                _backgroundColor ?? defaultColorOptions.primaryColor),
          ),
        ));
  }
}
