import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_module.dart';

void main() {

  setUpAll(() {
    initModule(DesenvolvimentoModule());
  });
}