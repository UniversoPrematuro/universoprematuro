import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:universoprematuro/app/modules/editprofile/editprofile_module.dart';
 
void main() {

  setUpAll(() {
    initModule(EditprofileModule());
  });
}