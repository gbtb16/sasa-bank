import 'package:flutter/material.dart';

import 'package:sasa_bank/src/managements/cards/account/account_card.dart';
import 'package:sasa_bank/src/managements/cards/credit_card/credit_card.dart';
import 'package:sasa_bank/src/managements/cards/investiment/investiment_card.dart';
import 'package:sasa_bank/src/managements/cards/discover_more/discover_more_card.dart';
import 'package:sasa_bank/src/managements/cards/safe/safe_card.dart';
import 'package:sasa_bank/src/managements/cards/shopping/shopping_card.dart';

class CardsManagement extends StatefulWidget {
  const CardsManagement({
    Key? key,
  }) : super(key: key);

  @override
  State<CardsManagement> createState() => _CardsManagementState();
}

class _CardsManagementState extends State<CardsManagement> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      AccountCard(),
      CreditCard(),
      InvestimentCard(),
      SafeCard(),
      ShoppingCard(),
      DiscoverMoreCard()
    ]);
  }
}
