import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class InteractiveRectangle extends StatelessWidget {
  final String text;
  final String? coloredText;
  final String? moreText;
  final Color? backgroundColor;

  const InteractiveRectangle({
    Key? key,
    required this.text,
    this.coloredText,
    this.moreText,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () {},
              child: Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: defaultColorOptions.textColor,
                          ),
                          children: [
                            TextSpan(
                              text: text,
                            ),
                            TextSpan(
                              text: coloredText ?? '',
                              style: TextStyle(
                                  color: defaultColorOptions.primaryColor),
                            ),
                            TextSpan(text: moreText ?? '')
                          ])),
                ),
                const SizedBox(width: 30),
              ]),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: backgroundColor ?? defaultColorOptions.widgetsColor,
                elevation: 0,
                padding: const EdgeInsets.only(
                    top: 25, left: 30, right: 20, bottom: 30),
                shadowColor:
                    backgroundColor ?? defaultColorOptions.widgetsColor,
                onPrimary: defaultColorOptions.widgetsColor,
              )),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
