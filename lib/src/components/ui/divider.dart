import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      color: defaultColorOptions.dividerColor,
    );
  }
}
