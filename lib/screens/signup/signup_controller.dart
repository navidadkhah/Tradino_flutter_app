import 'package:get/get.dart';

class SignupController extends GetxController {
  var checkedbutton = false.obs;

  changeValue() {
    checkedbutton.toggle();
  }
}
