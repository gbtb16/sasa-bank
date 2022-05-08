class Tiles {
  final String title;
  final String subtitle;

  Tiles({required this.title, required this.subtitle});
}

List<Tiles> tiles = [
  Tiles(
    title: 'Registrar ou trazer chaves',
    subtitle:
        'Registre uma ou nova chave ou faça uma portabilidade para o Nubank.',
  ),
  Tiles(
    title: 'Configurar Pix',
    subtitle: 'Gerencie seu limite diário de transferências ou suas chaves Pix',
  ),
];
