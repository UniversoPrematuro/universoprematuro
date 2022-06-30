import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/crescimento/material/tip/tip_store.dart';
 
void main() {
  late TipStore store;

  setUpAll(() {
    store = TipStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}