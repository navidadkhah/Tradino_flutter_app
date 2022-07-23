import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ForgotPasswordController extends GetxController {
  late final TextEditingController emailTextController;

  @override
  void onInit() {
    emailTextController = TextEditingController();
    super.onInit();
  }
}
