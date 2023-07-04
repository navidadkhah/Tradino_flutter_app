import 'package:get/get.dart';
import 'package:tradino_flutter/screens/login/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    //Get.lazyPut(() => ApiController());
  }
}
