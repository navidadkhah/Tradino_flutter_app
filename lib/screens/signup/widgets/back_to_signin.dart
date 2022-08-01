import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackToSignInWidget extends StatelessWidget {
  const BackToSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Already have an account? ",
          style: kNormalBlack14,
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed("/login");
          },
          child: Text(
            'sign in',
            style: kNormalBlue14,
          ),
        ),
      ],
    );
  }
}
