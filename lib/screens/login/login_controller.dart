import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  late final TextEditingController emailUesernameTextController;
  late final TextEditingController passwordTextController;

  @override
  void onInit() {
    emailUesernameTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }
}
