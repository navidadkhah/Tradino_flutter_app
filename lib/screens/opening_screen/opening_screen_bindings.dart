import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:tradino_flutter/screens/opening_screen/opening_screen_contoller.dart';

class OpeningScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OpeningScreenController());
    // TODO: implement dependencies
  }
}
