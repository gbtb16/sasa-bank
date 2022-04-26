import 'package:sasa_bank/functions/global/random_string_function.dart';
import 'package:url_launcher/url_launcher.dart';

launchWhatsApp() async {
  String randomURLCode = getRandomString(5);

  final String message =
      'Que coisa especial! Através desse link, Gabriel Tavares, te convida para abrir uma conta no SasaBank! \n\nVenha aproveitar benefícios exclusivos, além de um banco sem tarifas:\nhttps://sasabank.com.br/friend-invite/birthday/$randomURLCode';

  final String whatsappUrl = 'whatsapp://send?text=$message';

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Não foi possível se conectar com $whatsappUrl';
  }
}
