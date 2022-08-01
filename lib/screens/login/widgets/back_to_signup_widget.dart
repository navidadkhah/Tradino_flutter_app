import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackToSignupWidget extends StatelessWidget {
  const BackToSignupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Dont have an account?",
          style: kNormalBlack14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalRoyalBlue14,
          ),
          onPressed: () {
            Get.offAllNamed("/signup");
          },
          child: const Text(
            'sign up',
            style: TextStyle(
              color: kRoyalBlue,
            ),
          ),
        ),
      ],
    );
  }
}
