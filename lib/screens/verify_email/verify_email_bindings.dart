import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:tradino_flutter/screens/verify_email/verify_email_controller.dart';

class VerifyEmailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyEmailController());
    // TODO: implement dependencies
  }
}
