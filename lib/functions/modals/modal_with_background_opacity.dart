import 'package:flutter/material.dart';
import 'package:sasa_bank/options/default_options.dart';

Future showModalButtonSheetWithBackgroundOpacity(
    BuildContext context, Widget page) {
  return showModalBottomSheet(
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    context: context,
    backgroundColor: defaultColorOptions.transparent,
    builder: (context) => Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: page,
    ),
  );
}
