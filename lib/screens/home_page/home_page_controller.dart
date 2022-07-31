import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex(index);
  }
}
