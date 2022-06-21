import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/desenvolvimento/desenvolvimento_store.dart';
 
void main() {
  late DesenvolvimentoStore store;

  setUpAll(() {
    store = DesenvolvimentoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}