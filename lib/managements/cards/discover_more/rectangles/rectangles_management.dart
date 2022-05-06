import 'package:flutter/material.dart';

import 'package:sasa_bank/components/rectangle.dart';
import 'package:sasa_bank/managements/cards/discover_more/rectangles/rectangles_object.dart';

class RectanglesManagement extends StatefulWidget {
  const RectanglesManagement({Key? key}) : super(key: key);

  @override
  State<RectanglesManagement> createState() => _RectanglesManagementState();
}

class _RectanglesManagementState extends State<RectanglesManagement> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: rectangles.length,
        itemBuilder: (context, index) {
          var iconNames = rectangles.map((e) => e.iconName).toList();
          var titles = rectangles.map((e) => e.title).toList();
          var subtitles = rectangles.map((e) => e.subtitle).toList();
          var buttonLabels = rectangles.map((e) => e.buttonLabel).toList();
          var functions = rectangles.map((e) => e.onPressed).toList();

          return (Rectangle(
            iconName: iconNames[index],
            title: titles[index],
            subtitle: subtitles[index],
            buttonLabel: buttonLabels[index],
            onPressed: functions[index],
          ));
        },
      ),
    );
  }
}
