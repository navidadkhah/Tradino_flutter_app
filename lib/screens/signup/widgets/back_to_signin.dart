import 'package:flutter/material.dart';

import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackToSignIn extends StatelessWidget {
  const BackToSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Already have an account?",
          style: kNormalBlack14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalBlue14,
          ),
          onPressed: null,
          // Get.toNamed(page), TODO: back to signin
          child: const Text(
            'sign in',
            style: TextStyle(
              color: kBlue,
            ),
          ),
        ),
      ],
    );
  }
}
