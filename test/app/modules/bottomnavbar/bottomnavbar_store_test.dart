import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/bottomnavbar/bottomnavbar_store.dart';
 
void main() {
  late BottomnavbarStore store;

  setUpAll(() {
    store = BottomnavbarStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}