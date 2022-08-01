import 'package:get/get.dart';
import 'package:tradino_flutter/screens/create_new_password/create_new_password_controller.dart';

class CreateNewPasswordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewPasswordController());

    //Get.lazyPut(() => ApiController());
  }
}
