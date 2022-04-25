import 'dart:math';

import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

const _usefulCharacters =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
final Random _random = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length,
    (_) => _usefulCharacters
        .codeUnitAt(_random.nextInt(_usefulCharacters.length))));

launchWhatsApp() async {
  String randomURLCode = getRandomString(5);

  var link = WhatsAppUnilink(
      text:
          'Que coisa especial! Através desse link, Gabriel Tavares, te convida para abrir uma conta no SasaBank! \n\nVenha aproveitar benefícios exclusivos, além de um banco sem tarifas:\nhttps://sasabank.com.br/friend-invite/birthday/$randomURLCode');

  await launch('$link');
}
