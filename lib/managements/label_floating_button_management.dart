import 'package:flutter/material.dart';
import 'package:sasa_bank/functions/global/launch_whatsapp_function.dart';

import 'package:sasa_bank/widgets/label_floating_button_widget.dart';

// mudança futura: tornar-se um listview de criação automática

class LabelFloatingButtonManagement extends StatefulWidget {
  const LabelFloatingButtonManagement({Key? key}) : super(key: key);

  @override
  State<LabelFloatingButtonManagement> createState() =>
      _LabelFloatingButtonManagementState();
}

class _LabelFloatingButtonManagementState
    extends State<LabelFloatingButtonManagement> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LabelFloatingButtonWidget(
          heroTag: 'button-pix',
          onPressed: () {},
          icon: Icons.pix,
          title: 'Área Pix',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-payment',
          onPressed: () {},
          icon: Icons.shopping_basket_rounded,
          title: 'Pagar',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-nacional-transfer',
          onPressed: () {},
          icon: Icons.transfer_within_a_station,
          title: 'Transferir',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-deposit',
          onPressed: () {},
          icon: Icons.deblur,
          title: 'Depositar',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-cellphone-recharge',
          onPressed: () {},
          icon: Icons.smartphone,
          title: 'Recarga de celular',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-demand',
          onPressed: () {},
          icon: Icons.people,
          title: 'Cobrar',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-donation',
          onPressed: () {},
          icon: Icons.money,
          title: 'Doação',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-invite-whatsapp',
          onPressed: () {
            launchWhatsApp();
          },
          icon: Icons.whatsapp,
          title: 'Indicar\namigos',
        ),
        LabelFloatingButtonWidget(
          heroTag: 'button-international-transfer',
          onPressed: () {},
          icon: Icons.transform,
          title: 'Transferir\nInternac.',
        ),
      ],
    );
  }
}
