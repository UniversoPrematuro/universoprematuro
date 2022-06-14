import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/perfil/perfil_store.dart';
 
void main() {
  late PerfilStore store;

  setUpAll(() {
    store = PerfilStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}