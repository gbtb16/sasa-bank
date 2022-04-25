import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class ExpandedScrollingArea extends StatelessWidget {
  final Widget child;

  const ExpandedScrollingArea({Key? key, required this.child})
      : super(key: key);

  Future<void> _refresh() {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: _refresh,
        backgroundColor: defaultColorOptions.primaryColor,
        color: defaultColorOptions.iconColor,
        strokeWidth: 1,
        displacement: 40,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: child,
        ),
      ),
    );
  }
}
