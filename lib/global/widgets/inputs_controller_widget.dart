import 'package:get/get.dart';

class InputControllerWidget extends GetxController {
  var isPasswordVisible = false.obs;

  togglePassword1Visible() {
    isPasswordVisible.toggle();
  }
}
