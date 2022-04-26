import 'package:flutter/material.dart';

import 'package:sasa_bank/widgets/custom_card_widget.dart';
import 'package:sasa_bank/options/default_options.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      onPressed: () {},
      iconName: Icons.credit_card,
      title: 'Cartão de crédito',
      hasArrowFoward: true,
      hasBottomLine: true,
      internalChild: Column(children: [
        Row(
          children: [
            Text(
              'Fatura Atual',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Text(
              'R\$ 7.586,94',
              style: TextStyle(
                color: defaultColorOptions.textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Limite disponível de R\$4.325,52',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Débito automático: ',
              style: TextStyle(
                color: defaultColorOptions.secondTextColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ativado',
              style: TextStyle(
                color: defaultColorOptions.enabledTextColor,
                fontSize: 12,
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
                    color: defaultColorOptions.iconColor,
                    fontWeight: FontWeight.bold,
                  )),
              style: ElevatedButton.styleFrom(
                primary: defaultColorOptions.primaryColor,
                shape: const StadiumBorder(),
                shadowColor: defaultColorOptions.iconColor,
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
