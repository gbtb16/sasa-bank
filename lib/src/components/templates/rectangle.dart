import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class Rectangle extends StatelessWidget {
  final IconData iconName;
  final String title;
  final String subtitle;
  final String buttonLabel;
  final Function onPressed;

  const Rectangle(
      {Key? key,
      required this.iconName,
      required this.title,
      required this.subtitle,
      required this.buttonLabel,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 280,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: defaultColorOptions.widgetsColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 250,
            decoration: BoxDecoration(
              color: defaultColorOptions.textColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Icon(
                iconName,
                color: defaultColorOptions.widgetsColor,
                size: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: defaultColorOptions.textColor),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(color: defaultColorOptions.textColor),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      onPressed();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: defaultColorOptions.primaryColor,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      buttonLabel,
                      style: TextStyle(
                          color: defaultColorOptions.iconColor,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
