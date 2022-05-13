import 'package:flutter/material.dart';

import 'package:sasa_bank/src/managements/cards/custom_cards_management.dart';
import 'package:sasa_bank/src/menus/top_menu/top_menu.dart';
import 'package:sasa_bank/src/options/default_options.dart';
import '../../areas/expanded_scrolling_refresh_area.dart';

class HomeScreenController extends StatefulWidget {
  const HomeScreenController({Key? key}) : super(key: key);

  @override
  State<HomeScreenController> createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return ExpandedScrollingRefreshArea(
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
