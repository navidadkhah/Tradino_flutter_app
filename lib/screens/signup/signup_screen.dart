import 'package:flutter/material.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/header_tradino.dart';
import 'package:tradino_flutter/screens/signup/widgets/signup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCharcoal,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Headers(),
            SignupBody(),
          ],
        ),
      ),
    );
  }
}
