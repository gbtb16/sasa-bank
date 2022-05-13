import 'package:flutter/material.dart';

import 'package:sasa_bank/src/areas/expanded_scrolling_area.dart';
import 'package:sasa_bank/src/components/ui/divider.dart' as divider;
import 'package:sasa_bank/src/components/useful/subtitle.dart';
import 'package:sasa_bank/src/components/useful/title.dart' as title;
import 'package:sasa_bank/src/components/useful/top_bar.dart';
import 'package:sasa_bank/src/managements/modals/pix/give_buttons/give_buttons_manager.dart';
import 'package:sasa_bank/src/managements/modals/pix/send_buttons/send_buttons_manager.dart';
import 'package:sasa_bank/src/managements/modals/pix/tiles/tiles_manager.dart';
import 'package:sasa_bank/src/options/default_options.dart';

class PixPage extends StatelessWidget {
  const PixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.955,
      builder: (_, context) => Container(
        decoration: BoxDecoration(
          color: defaultColorOptions.iconColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            const TopBar(
              secondIconName: Icons.help_outline,
            ),
            ExpandedScrollingArea(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: const [
                        SizedBox(height: 15),
                        title.Title(text: 'Área Pix', fontSize: 30),
                        SizedBox(height: 15),
                        Subtitle(
                            text:
                                'Envie e recebe pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.'),
                        SizedBox(height: 15),
                        title.Title(text: 'Enviar'),
                        SizedBox(height: 25),
                        SendButtonsManager(),
                        SizedBox(height: 7),
                        title.Title(text: 'Receber'),
                        SizedBox(height: 25),
                        GiveButtonsManager(),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                  const divider.Divider(),
                  const TilesManager(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
