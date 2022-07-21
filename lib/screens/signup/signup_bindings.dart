import 'package:get/get.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());

    //Get.lazyPut(() => ApiController());
  }
}
