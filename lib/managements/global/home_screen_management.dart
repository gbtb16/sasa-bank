import 'package:flutter/material.dart';

import 'package:sasa_bank/managements/global/custom_cards_management.dart';
import 'package:sasa_bank/menus/top_menu/top_menu.dart';
import 'package:sasa_bank/options/default_options.dart';
import '../../areas/expanded_scrolling_area.dart';

class HomeScreenManagement extends StatefulWidget {
  const HomeScreenManagement({Key? key}) : super(key: key);

  @override
  State<HomeScreenManagement> createState() => _HomeScreenManagementState();
}

class _HomeScreenManagementState extends State<HomeScreenManagement> {
  @override
  Widget build(BuildContext context) {
    return ExpandedScrollingArea(
      child: Column(
        children: [
          TopMenu(
            name: 'Gabriel',
            backgroundColorOfAvatar: defaultColorOptions.secondColor,
            boxDecoration: BoxDecoration(
              color: defaultColorOptions.primaryColor,
            ),
          ),
          const CardsManagement(),
        ],
      ),
    );
  }
}
