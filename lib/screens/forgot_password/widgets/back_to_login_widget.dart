import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackToLoginWidget extends StatelessWidget {
  const BackToLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Remember password ?",
          style: kNormalBlack14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalRoyalBlue14,
          ),
          onPressed: () {
            Get.offAllNamed("/login");
          },
          child: const Text(
            'Login',
            style: TextStyle(
              color: kRoyalBlue,
            ),
          ),
        ),
      ],
    );
  }
}
