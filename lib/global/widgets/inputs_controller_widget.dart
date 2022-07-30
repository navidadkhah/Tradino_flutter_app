import 'package:get/get.dart';

class InputControllerWidget extends GetxController {
  var isFirstPasswordVisible = false.obs;
  var isSecondPasswordVisible = false.obs;

  togglePassword1Visible(String wichPassword) {
    if (wichPassword == "isPassword2Visible") {
      isSecondPasswordVisible.toggle();
    } else {
      isFirstPasswordVisible.toggle();
    }
  }
}
