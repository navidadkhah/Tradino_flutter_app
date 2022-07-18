import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null, // TODO: go to forgot pass page
      child: Text(
        "Forgot password",
        style: kNormalGrayBlack14,
      ),
    );
  }
}
