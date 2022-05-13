import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';
import 'package:sasa_bank/components/ui/divider.dart' as components;

class CustomCardWidget extends StatelessWidget {
  final IconData? iconName;
  final Color? iconColor;

  final String title;
  final String? subtitle;

  final Widget? internalChild;
  final Widget? externalChild;

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
          const components.Divider(),
          TextButton(
              onPressed: onPressed!(),
              style: TextButton.styleFrom(
                shadowColor: defaultColorOptions.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _hasIcon
                        ? const Padding(padding: EdgeInsets.only(top: 20))
                        : const Padding(padding: EdgeInsets.only(top: 16)),
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
                            ? Icon(
                                Icons.arrow_back_ios,
                                color: defaultColorOptions.secondTextColor,
                                textDirection: TextDirection.rtl,
                                size: 16,
                              )
                            : const SizedBox(height: 0),
                      ],
                    ),
                    _hasSubtitle
                        ? const SizedBox(height: 15)
                        : const SizedBox(height: 10),
                    _hasSubtitle
                        ? Text(
                            subtitle ?? '',
                            style: TextStyle(
                              height: 1.5,
                              color: defaultColorOptions.secondTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const SizedBox(height: 0),
                    _hasSubtitle
                        ? const SizedBox(height: 15)
                        : const SizedBox(height: 0),
                    internalChild ?? Container(),
                  ],
                ),
              )),
          externalChild ?? Container(),
        ],
      ),
    );
  }
}
