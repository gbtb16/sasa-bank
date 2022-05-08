import 'package:flutter/material.dart';

Future showModalButtonSheetWithoutBackgroundOpacity(
    BuildContext context, Widget page) {
  return showModalBottomSheet(
    isScrollControlled: true,
    barrierColor: Colors.black.withOpacity(0),
    context: context,
    builder: (context) => page,
  );
}
