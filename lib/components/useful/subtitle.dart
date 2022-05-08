import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class Subtitle extends StatefulWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;

  const Subtitle({
    Key? key,
    required this.text,
    this.textColor,
    this.fontSize,
  }) : super(key: key);

  @override
  State<Subtitle> createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
  @override
  Widget build(BuildContext context) {
    final String _text = widget.text;
    final Color? _textColor = widget.textColor;
    final double? _fontSize = widget.fontSize;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            _text,
            style: TextStyle(
              color: _textColor ?? defaultColorOptions.secondTextColor,
              fontSize: _fontSize ?? 17,
            ),
          ),
        )
      ],
    );
  }
}
