import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/configuracoes/configuracoes_store.dart';
 
void main() {
  late ConfiguracoesStore store;

  setUpAll(() {
    store = ConfiguracoesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}