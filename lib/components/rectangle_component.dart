import 'package:flutter/material.dart';

import 'package:sasa_bank/options/default_options.dart';

class RectangleComponent extends StatelessWidget {
  final IconData iconName;
  final String title;
  final String subtitle;
  final String buttonText;
  final Function onPressed;

  const RectangleComponent(
      {Key? key,
      required this.iconName,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 280,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: defaultColorOptions.textColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 120,
              width: 250,
              child: Center(
                  child: Icon(
                iconName,
                color: defaultColorOptions.secondColor,
                size: 50,
              ))),
          Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: defaultColorOptions.primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: defaultColorOptions.iconColor)),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Text(subtitle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: defaultColorOptions.iconColor)),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () {
                            onPressed();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: defaultColorOptions.iconColor,
                            elevation: 0,
                            shape: const StadiumBorder(),
                          ),
                          child: Text(buttonText,
                              style: TextStyle(
                                  color: defaultColorOptions.textColor,
                                  fontWeight: FontWeight.w500)))
                    ]),
              )),
        ],
      ),
    );
  }
}
