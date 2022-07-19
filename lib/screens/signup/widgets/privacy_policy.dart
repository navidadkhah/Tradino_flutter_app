import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
          ),
          child: Obx(
            () {
              final isActive = controller.checkedbutton.value;

              return Checkbox(
                checkColor: Colors.greenAccent,
                activeColor: KDarkGreen,
                focusColor: kBlack,
                value: isActive,
                onChanged: (args) {
                  controller.changeValue();
                },
              );
            },
          ),
        ),
        Text(
          "I Agree with",
          style: kNormalGrayBlack14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalBlue14,
          ),
          onPressed: () {
            Get.toNamed("/privacy");
          },
          // TODO: letter of privacy policy and with Getx.snackbar
          child: const Text(
            'privacy and policy',
            style: TextStyle(
              color: kBlue,
            ),
          ),
        ),
      ],
    );
  }
}
