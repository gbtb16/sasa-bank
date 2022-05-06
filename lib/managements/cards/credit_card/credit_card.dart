import 'package:flutter/material.dart';

import 'package:sasa_bank/menus/top_menu/top_menu.dart';
import 'package:sasa_bank/widgets/custom_card_widget.dart';
import 'package:sasa_bank/options/default_options.dart';
import 'package:sasa_bank/managements/global/global_variables.dart' as globals;

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  final globals.Visibility _visibility = visibility;

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      iconName: Icons.credit_card,
      title: 'Cartão de crédito',
      hasArrowFoward: true,
      internalChild: Column(children: [
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              'Fatura atual',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AnimatedBuilder(
                animation: _visibility,
                builder: (context, _) {
                  return Text(
                    _visibility.getIsVisible() ? 'R\$ 7.586,94' : '••••',
                    style: TextStyle(
                      color: defaultColorOptions.textColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                })
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Limite disponível de ',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            AnimatedBuilder(
                animation: _visibility,
                builder: (context, _) {
                  return Text(
                    _visibility.getIsVisible() ? 'R\$4.325,52' : '••••',
                    style: TextStyle(
                      color: defaultColorOptions.secondTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }),
          ],
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            Text(
              'Débito automático: ',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ativado',
              style: TextStyle(
                color: defaultColorOptions.enabledTextColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Parcelar Compras',
                  style: TextStyle(
                    color: defaultColorOptions.textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              style: ElevatedButton.styleFrom(
                primary: defaultColorOptions.widgetsColor,
                shape: const StadiumBorder(),
                shadowColor: defaultColorOptions.widgetsColor,
                elevation: 0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ]),
    );
  }
}
