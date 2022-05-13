import 'package:flutter/material.dart';

import 'package:sasa_bank/src/areas/colored_safe_area.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: Column(),
      ),
    );
  }
}
