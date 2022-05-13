import 'package:flutter/material.dart';

import 'package:sasa_bank/src/functions/modals/modal_without_background_opacity.dart';
import 'package:sasa_bank/src/menus/top_menu/pages/account/account_page.dart';
import 'package:sasa_bank/src/options/default_options.dart';
import 'package:sasa_bank/src/managements/global/visibility_management.dart'
    as globals;

final globals.Visibility visibility = globals.Visibility();

class TopMenu extends StatefulWidget {
  final String name;
  final BoxDecoration? boxDecoration;
  final Color? backgroundColorOfAvatar;

  const TopMenu({
    Key? key,
    required this.name,
    required this.boxDecoration,
    required this.backgroundColorOfAvatar,
  }) : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    final String _name = widget.name;
    final BoxDecoration? _boxDecoration = widget.boxDecoration;
    final Color? _backgroundColorOfAvatar = widget.backgroundColorOfAvatar;

    return Container(
      width: double.infinity,
      decoration: _boxDecoration,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: GestureDetector(
                    onTap: () {
                      showModalButtonSheetWithoutBackgroundOpacity(
                          context, const AccountPage());
                    },
                    child: FittedBox(
                      child: CircleAvatar(
                        backgroundColor: _backgroundColorOfAvatar,
                        child: Icon(
                          Icons.person_outlined,
                          color: defaultColorOptions.iconColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                        visibility.setIsVisible(_isVisible);
                      },
                      child: AnimatedBuilder(
                        animation: visibility,
                        builder: (context, _) {
                          return CircleAvatar(
                            backgroundColor: defaultColorOptions.primaryColor,
                            child: Icon(
                              visibility.getIsVisible()
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 25,
                              color: defaultColorOptions.iconColor,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Olá, $_name',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: defaultColorOptions.iconColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
