import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  late final TextEditingController usernameTextController;
  late final TextEditingController emailTextController;
  late final TextEditingController passwordTextController;

  var isPrivacyAccepted = false.obs;

  @override
  void onInit() {
    usernameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    super.onInit();
  }

  togglePrivacyAccepted() {
    isPrivacyAccepted.toggle();
  }
}
