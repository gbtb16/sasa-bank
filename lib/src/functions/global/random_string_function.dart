import 'dart:math';

const _usefulCharacters =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
final Random _random = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length,
    (_) => _usefulCharacters
        .codeUnitAt(_random.nextInt(_usefulCharacters.length))));
