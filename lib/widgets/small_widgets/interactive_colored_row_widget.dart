import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class InteractiveColoredRowWidget extends StatelessWidget {
  final String text;
  final String? boldText;
  final String? moreText;
  final Color? backgroundColor;

  const InteractiveColoredRowWidget({
    Key? key,
    required this.text,
    this.boldText,
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
                            fontFamily: 'Poppins',
                            color: defaultColorOptions.iconColor),
                        children: [
                          TextSpan(
                              text: text,
                              style: const TextStyle(fontFamily: 'Poppins')),
                          TextSpan(
                              text: boldText ?? '',
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold)),
                          TextSpan(text: moreText ?? '')
                        ])),
              ),
              const SizedBox(width: 30),
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
                      top: 25, left: 20, right: 20, bottom: 30)),
              foregroundColor: MaterialStateProperty.all<Color?>(
                  backgroundColor ?? defaultColorOptions.primaryColor),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
