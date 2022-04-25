import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class LabelFloatingButtonWidget extends StatelessWidget {
  final Function onPressed;
  final Object heroTag;
  final IconData icon;
  final String title;
  final Color? backgroundColor;
  final Color? iconColor;

  const LabelFloatingButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.heroTag,
      required this.icon,
      required this.title,
      this.backgroundColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 75,
        height: 125,
        child: Column(
          children: [
            SizedBox(
              width: 85,
              child: FittedBox(
                child: FloatingActionButton(
                  heroTag: heroTag,
                  onPressed: () {
                    onPressed();
                  },
                  backgroundColor:
                      backgroundColor ?? defaultColorOptions.primaryColor,
                  elevation: 0,
                  child: Icon(icon,
                      color: iconColor ?? defaultColorOptions.iconColor,
                      size: 20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: defaultColorOptions.textColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
