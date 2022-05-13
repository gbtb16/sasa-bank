import 'package:flutter/material.dart';

import 'package:sasa_bank/src/options/default_options.dart';

Future showModalButtonSheetWithoutBackgroundOpacity(
    BuildContext context, Widget page) {
  return showModalBottomSheet(
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    context: context,
    backgroundColor: defaultColorOptions.transparent,
    barrierColor: Colors.black.withOpacity(0),
    builder: (context) => page,
  );
}
