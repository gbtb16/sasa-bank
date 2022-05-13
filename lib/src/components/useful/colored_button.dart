import 'package:flutter/material.dart';

import 'package:sasa_bank/src/options/default_options.dart';

class ColoredButton extends StatefulWidget {
  final IconData? iconName;
  final String title;
  final String? secondTitle;
  final Color? backgroundColor;
  final Function onPressed;

  const ColoredButton(
      {Key? key,
      this.iconName,
      required this.title,
      this.secondTitle,
      this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<ColoredButton> createState() => _ColoredButtonState();
}

class _ColoredButtonState extends State<ColoredButton> {
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
        padding: const EdgeInsets.only(left: 25, right: 20),
        child: ElevatedButton(
          onPressed: () {
            _onPressed();
          },
          child: Row(children: [
            _hasIcon
                ? Icon(
                    _iconName,
                    color: defaultColorOptions.textColor,
                  )
                : Container(),
            _hasIcon
                ? const Padding(
                    padding: EdgeInsets.only(left: 20),
                  )
                : Container(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_title,
                      style: TextStyle(
                        color: defaultColorOptions.textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  _hasSecondTitle
                      ? Text(_secondTitle!,
                          style: TextStyle(
                            color: defaultColorOptions.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ))
                      : const SizedBox(height: 0),
                ],
              ),
            ),
          ]),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            primary: _backgroundColor ?? defaultColorOptions.widgetsColor,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            shadowColor: _backgroundColor ?? defaultColorOptions.widgetsColor,
            onPrimary: defaultColorOptions.widgetsColor,
          ),
        ));
  }
}
