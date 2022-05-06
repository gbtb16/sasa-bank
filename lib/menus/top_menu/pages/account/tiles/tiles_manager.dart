import 'package:flutter/material.dart';

import 'package:sasa_bank/menus/top_menu/pages/account/tiles/tiles_object.dart';
import 'package:sasa_bank/options/default_options.dart';
import 'package:sasa_bank/components/divider.dart' as components;

class TilesManager extends StatefulWidget {
  const TilesManager({Key? key}) : super(key: key);

  @override
  State<TilesManager> createState() => _TilesManagerState();
}

class _TilesManagerState extends State<TilesManager> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tiles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var leadings = tiles.map((e) => e.leading).toList();
              var titles = tiles.map((e) => e.title).toList();
              var functions = tiles.map((e) => e.onPressed).toList();

              return Column(children: [
                ListTile(
                  tileColor: defaultColorOptions.iconColor,
                  iconColor: defaultColorOptions.textColor,
                  textColor: defaultColorOptions.textColor,
                  leading: Icon(
                    leadings[index],
                  ),
                  title: Text(
                    titles[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_back_ios,
                    textDirection: TextDirection.rtl,
                    size: 15,
                  ),
                  minLeadingWidth: 0,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 25,
                  ),
                  onTap: (functions[index]()),
                ),
                const components.Divider(),
              ]);
            }));
  }
}
