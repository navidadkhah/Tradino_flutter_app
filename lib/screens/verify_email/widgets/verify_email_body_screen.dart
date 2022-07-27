import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_controller.dart';
import 'package:pinput/pinput.dart';
import 'package:tradino_flutter/screens/verify_email/verify_email_controller.dart';

class VerifyEmailBodyWidget extends StatelessWidget {
  const VerifyEmailBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ForgotPasswordController email = Get.find();
    final VerifyEmailController controller = Get.find();

    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: kCultured,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0.r),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 36.0.h),
              Text(
                "Verification your email!",
                style: kSemiBoldCharcoal24,
              ),
              SizedBox(height: 24.0.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Please Enter The Code Send to",
                    style: kNormalBlack14,
                  ),
                  Text(
                    email.emailTextController.text,
                    style: kNormalBlack14,
                  )
                ],
              ),
              SizedBox(
                child: Pinput(
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsRetrieverApi,
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
                        ]),
                  ),
                ),
              ),
              SizedBox(height: 32.0.h),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend code",
                  style: kSemiBoldRoyalBlue16,
                ),
              ),
              SizedBox(height: 80.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Verify",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
