import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class Title extends StatefulWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;

  const Title({
    Key? key,
    required this.text,
    this.textColor,
    this.fontSize,
  }) : super(key: key);

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  @override
  Widget build(BuildContext context) {
    final String _text = widget.text;
    final Color? _textColor = widget.textColor;
    final double? _fontSize = widget.fontSize;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          _text,
          style: TextStyle(
            color: _textColor ?? defaultColorOptions.textColor,
            fontSize: _fontSize ?? 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
