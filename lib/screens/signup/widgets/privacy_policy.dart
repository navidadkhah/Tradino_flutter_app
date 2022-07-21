import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';

class PrivacyPolicyCheckBoxWidget extends StatelessWidget {
  const PrivacyPolicyCheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() {
          final isActive = controller.isPrivacyAccepted.value;

          return SizedBox(
            width: 24.0.w,
            height: 24.0.w,
            child: Checkbox(
              checkColor: kCharcoal,
              activeColor: kMintGreen,
              value: isActive,
              onChanged: (_) {
                controller.togglePrivacyAccepted();
              },
            ),
          );
        }),
        SizedBox(width: 8.0.w),
        Text(
          "I Agree with ",
          style: kNormalCharcoal14,
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed("/privacy");
          },
          child: Text(
            'privacy and policy',
            style: kNormalRoyalBlue14,
          ),
        ),
      ],
    );
  }
}
