import 'package:flutter/material.dart';

import 'package:sasa_bank/areas/expanded_scrolling_area.dart';
import 'package:sasa_bank/components/useful/subtitle.dart';
import 'package:sasa_bank/components/useful/title.dart' as title;
import 'package:sasa_bank/components/useful/top_bar.dart';
import 'package:sasa_bank/managements/modals/pix/give_buttons/give_buttons_manager.dart';
import 'package:sasa_bank/managements/modals/pix/send_buttons/send_buttons_manager.dart';
import 'package:sasa_bank/options/default_options.dart';

class PixPage extends StatelessWidget {
  const PixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.95,
      builder: (_, context) => Container(
        decoration: BoxDecoration(
          color: defaultColorOptions.iconColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            const TopBar(
              secondIconName: Icons.help_outline,
            ),
            ExpandedScrollingArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: const [
                    title.Title(text: 'Área Pix', fontSize: 30),
                    SizedBox(height: 15),
                    Subtitle(
                        text:
                            'Envie e recebe pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.'),
                    SizedBox(height: 15),
                    title.Title(text: 'Enviar'),
                    SizedBox(height: 25),
                    SendButtonsManager(),
                    SizedBox(height: 25),
                    title.Title(text: 'Receber'),
                    SizedBox(height: 25),
                    GiveButtonsManager(),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
