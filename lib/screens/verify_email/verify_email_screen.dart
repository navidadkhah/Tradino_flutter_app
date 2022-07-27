import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/tradino_header_widget.dart';
import 'package:tradino_flutter/screens/verify_email/widgets/verification_header_widget.dart';
import 'package:tradino_flutter/screens/verify_email/widgets/verify_email_body_screen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCharcoal,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerificationHeaderWidget(),
            VerifyEmailBodyWidget(),
          ],
        ),
      ),
    );
  }
}
