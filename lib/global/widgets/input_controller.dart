import 'package:get/get.dart';

class InputController extends GetxController {
  var isVisible = false.obs;

  changeVisibility() {
    isVisible.toggle();
  }
}
