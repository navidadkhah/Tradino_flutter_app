import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/screens/verify_email/verify_email_controller.dart';

class PinputWidget extends StatelessWidget {
  const PinputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final VerifyEmailController controller = Get.find();

    return Pinput(
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
      length: 4,
      controller: controller.verifyTextController,
      autofocus: true,
      defaultPinTheme: PinTheme(
        margin: EdgeInsets.symmetric(horizontal: 4.0.w),
        width: 52.0.w,
        height: 72.0.h,
        textStyle: kNormalBlack18,
        decoration: BoxDecoration(
          color: kWhite,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            kButtonWidgetShadow3,
          ],
        ),
      ),
    );
  }
}
