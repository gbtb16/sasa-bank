import 'package:flutter/material.dart';

import 'package:sasa_bank/src/components/ui/divider.dart' as divider;
import 'package:sasa_bank/src/managements/modals/pix/tiles/tiles_object.dart';
import 'package:sasa_bank/src/options/default_options.dart';

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
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: tiles.length,
          itemBuilder: (context, index) {
            var titles = tiles.map((e) => e.title).toList();
            var subtitles = tiles.map((e) => e.subtitle).toList();

            return Column(
              children: [
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      titles[index],
                      style: TextStyle(
                        color: defaultColorOptions.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    subtitles[index],
                    style: TextStyle(
                      color: defaultColorOptions.secondTextColor,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: defaultColorOptions.secondTextColor,
                      textDirection: TextDirection.rtl,
                      size: 15,
                    ),
                  ),
                ),
                const divider.Divider(),
              ],
            );
          }),
    );
  }
}
