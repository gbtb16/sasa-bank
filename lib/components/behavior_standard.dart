import 'package:flutter/material.dart';

class BehaviorStandard extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget? child, ScrollableDetails details) {
    return child!;
  }
}
