import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class VerifyEmailController extends GetxController {
  late final TextEditingController verifyTextController;

  @override
  void onInit() {
    verifyTextController = TextEditingController();

    super.onInit();
  }
}
