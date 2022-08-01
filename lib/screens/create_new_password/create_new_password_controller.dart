import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CreateNewPasswordController extends GetxController {
  late final TextEditingController passwordTextController;
  late final TextEditingController confirmPasswordTextController;

  @override
  void onInit() {
    passwordTextController = TextEditingController();
    confirmPasswordTextController = TextEditingController();
    super.onInit();
  }
}
