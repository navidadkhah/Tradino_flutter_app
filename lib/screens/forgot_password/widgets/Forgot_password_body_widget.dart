import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/back_text_widget.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_controller.dart';

class ForgotPasswordBodyWidget extends StatelessWidget {
  const ForgotPasswordBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ForgotPasswordController controller = Get.find();

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
              SizedBox(height: 24.0.h),
              Text(
                "Forgot your password ?",
                style: kSemiBoldCharcoal24,
              ),
              SizedBox(height: 24.0.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Please Enter your email address to",
                    style: kNormalBlack14,
                  ),
                  Text(
                    "resieve a verification code",
                    style: kNormalBlack14,
                  )
                ],
              ),
              SizedBox(height: 32.0.h),
              InputWidget(
                title: "Email",
                textEditingController: controller.emailTextController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                radius: 8.0.r,
                inputHeight: 36.0.h,
                obscureText: false,
              ),
              SizedBox(height: 128.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Send",
                onTap: () {
                  Get.toNamed('/verifyemail');
                },
                // TODO: tap to send a verification email and go to
                // verification email page
              ),
              SizedBox(height: 12.0.h),
              const BackTextWidget(
                title: "Remember password ?",
                pageName: "Login",
                getName: "/login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
