import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackToSignIn extends StatelessWidget {
  const BackToSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Already have an account?"),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalBlue14,
          ),
          onPressed: null,
          // Get.toNamed(page),
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
