import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'es_ES': {
          'sayHi': 'Hola',
        },
        'en_US': {
          'sayHi': 'Hello',
        },
      };
}
