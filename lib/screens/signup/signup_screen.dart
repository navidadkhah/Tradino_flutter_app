import 'package:flutter/material.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/tradino_header_widget.dart';
import 'package:tradino_flutter/screens/signup/widgets/signup_body_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrayBlack,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            TradinoHeaderWidget(),
            SignupBodyWidget(),
          ],
        ),
      ),
    );
  }
}
