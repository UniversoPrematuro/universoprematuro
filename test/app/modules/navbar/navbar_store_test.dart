import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/navbar/navbar_store.dart';
 
void main() {
  late NavbarStore store;

  setUpAll(() {
    store = NavbarStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}