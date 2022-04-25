import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class CustomCardWidget extends StatelessWidget {
  final IconData? iconName;
  final Color? iconColor;

  final String title;
  final String? subtitle;

  final Widget? internalChild;
  final Widget? externalChild;

  final bool hasBottomLine;
  final Color? bottomLineColor;

  final bool hasArrowFoward;

  final Function? onPressed;

  const CustomCardWidget(
      {Key? key,
      this.iconName,
      this.iconColor,
      required this.title,
      this.subtitle,
      this.internalChild,
      this.externalChild,
      required this.hasBottomLine,
      this.bottomLineColor,
      required this.hasArrowFoward,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _hasIcon;
    final bool _hasSubtitle;

    if (iconName != null) {
      _hasIcon = true;
    } else {
      _hasIcon = false;
    }

    if (subtitle != null) {
      _hasSubtitle = true;
    } else {
      _hasSubtitle = false;
    }

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
              onPressed: onPressed!(),
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(
                    defaultColorOptions.transparent),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _hasIcon
                        ? const Padding(padding: EdgeInsets.only(top: 20))
                        : const Padding(padding: EdgeInsets.only(top: 15)),
                    _hasIcon
                        ? Icon(
                            iconName,
                            color: iconColor ?? defaultColorOptions.textColor,
                          )
                        : Container(),
                    _hasIcon
                        ? const Padding(padding: EdgeInsets.only(top: 10))
                        : const Padding(padding: EdgeInsets.only(top: 0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: defaultColorOptions.textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hasArrowFoward
                            ? Icon(Icons.arrow_back_ios,
                                color: defaultColorOptions.textColor,
                                textDirection: TextDirection.rtl,
                                size: 16)
                            : const SizedBox(height: 0),
                      ],
                    ),
                    _hasSubtitle
                        ? const SizedBox(height: 15)
                        : const SizedBox(height: 10),
                    _hasSubtitle
                        ? RichText(
                            text: TextSpan(
                                text: subtitle,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: defaultColorOptions.secondTextColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)))
                        : const SizedBox(height: 0),
                    _hasSubtitle
                        ? const SizedBox(height: 15)
                        : const SizedBox(height: 0),
                    internalChild ?? Container(),
                  ],
                ),
              )),
          externalChild ?? Container(),
          hasBottomLine
              ? Container(
                  width: double.infinity,
                  height: 2,
                  color: bottomLineColor ?? defaultColorOptions.dividerColor,
                )
              : Container(),
        ],
      ),
    );
  }
}
