import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/back_text_widget.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/input_widget.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';
import 'package:tradino_flutter/screens/signup/widgets/privacy_policy.dart';
import '../../../global/constant/colors.dart';

class SignupBodyWidget extends StatelessWidget {
  const SignupBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find();

    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        decoration: BoxDecoration(
          color: kWhiteGray,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.0.h),
              Center(
                child: Text(
                  "Sign Up",
                  style: kSemiBoldGrayBlack32,
                ),
              ),
              SizedBox(height: 48.0.h),
              InputWidget(
                title: "Username",
                textEditingController: controller.usernameTextController,
              ),
              SizedBox(height: 16.0.h),
              InputWidget(
                title: "Email",
                textEditingController: controller.emailTextController,
              ),
              SizedBox(height: 16.0.h),
              InputWidget(
                title: "Password",
                textEditingController: controller.passwordTextController,
              ),
              SizedBox(height: 32.0.h),
              const PrivacyPolicyCheckBoxWidget(),
              SizedBox(height: 20.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Sign Up",
                onTap: () {
                  Get.toNamed("/verifyemail", arguments: '/signup');
                },
              ),
              SizedBox(height: 24.0.h),
              const Center(
                child: BackTextWidget(
                  title: "Already have an account ?",
                  pageName: "sign in",
                  getName: "/login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
