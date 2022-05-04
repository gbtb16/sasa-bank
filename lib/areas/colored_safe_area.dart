import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color? color;

  const ColoredSafeArea({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: color ?? defaultColorOptions.primaryColor,
        child: Column(
          children: [
            Expanded(child: SafeArea(child: child)),
          ],
        ));
  }
}
