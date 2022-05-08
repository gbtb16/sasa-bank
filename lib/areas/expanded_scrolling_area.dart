import 'package:flutter/material.dart';

class ExpandedScrollingArea extends StatelessWidget {
  final Widget child;

  const ExpandedScrollingArea({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: child,
      ),
    );
  }
}
