import 'package:flutter/material.dart';

import 'package:sasa_bank/managements/cards/account_card.dart';
import 'package:sasa_bank/managements/cards/credit_card.dart';
import 'package:sasa_bank/managements/cards/investiment_card.dart';
import 'package:sasa_bank/managements/cards/discover_more_card.dart';
import 'package:sasa_bank/managements/cards/safe_card.dart';
import 'package:sasa_bank/managements/cards/shopping_card.dart';

class CardsManagement extends StatefulWidget {
  const CardsManagement({Key? key}) : super(key: key);

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
