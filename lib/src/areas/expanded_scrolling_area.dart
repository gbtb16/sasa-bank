import 'package:flutter/material.dart';

class ExpandedScrollingArea extends StatelessWidget {
  final Widget child;
  final ScrollPhysics? physics;

  const ExpandedScrollingArea({Key? key, required this.child, this.physics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: physics ?? const BouncingScrollPhysics(),
        child: child,
      ),
    );
  }
}
