import 'package:flutter/material.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null, // TODO: go to forgot pass page
      child: Text(
        "Forgot password",
        style: kNormalCharcoal14,
      ),
    );
  }
}
