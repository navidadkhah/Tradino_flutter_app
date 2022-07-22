import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/login/login_controller.dart';
import 'package:tradino_flutter/screens/login/widgets/back_to_signup_widget.dart';
import 'package:tradino_flutter/screens/login/widgets/google_login.dart';
import 'package:tradino_flutter/screens/login/widgets/login_divider.dart';

import 'package:tradino_flutter/screens/signup/widgets/back_to_signin.dart';
import 'package:tradino_flutter/screens/signup/widgets/privacy_policy.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        decoration: BoxDecoration(
          color: kCultured,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0.r),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0.h),
              Center(
                child: Text(
                  "Login",
                  style: kSemiBoldCharcoal32,
                ),
              ),
              SizedBox(height: 36.0.h),
              InputWidget(
                title: "Email or username",
                textEditingController: controller.emailUesernameTextController,
                textInputAction: TextInputAction.done,
                radius: 10,
                inputHeight: 48,
                obscureText: false,
              ),
              SizedBox(height: 12.0.h),
              InputWidget(
                title: "Password",
                textEditingController: controller.passwordTextController,
                textInputAction: TextInputAction.done,
                radius: 10,
                inputHeight: 48,
                obscureText: true,
              ),
              SizedBox(height: 20.0.h),
              Center(
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    "Forgot password",
                    style: kNormalBlack14,
                  ),
                ),
              ),
              SizedBox(height: 20.0.h),
              Center(
                child: ButtonWidget(
                  width: double.infinity,
                  height: 52.0.h,
                  title: "Sign Up",
                  onTap: () {},
                ),
              ),
              SizedBox(height: 8.0.h),
              const Center(
                child: BackToSignupWidget(),
              ),
              LoginDividerWidget(),
              GoogleLoginWidget(),
            ],
          ),
        ),
      ),
    );

    // return Expanded(
    //   flex: 5,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       color: kCultured,
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(
    //           40.r,
    //         ),
    //         topRight: Radius.circular(
    //           40.r,
    //         ),
    //       ),
    //     ),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           LoginPageName(),
    //           InputWidget(
    //             title: "Email or username",
    //             textEditingController: controller.emailUesernameTextController,
    //             textInputAction: TextInputAction.done,
    //             radius: 10,
    //             inputHeight: 48,
    //             obscureText: false,
    //           ),
    //           InputWidget(
    //             title: "Password",
    //             textEditingController: controller.passwordTextController,
    //             textInputAction: TextInputAction.done,
    //             radius: 10,
    //             inputHeight: 48,
    //             obscureText: true,
    //           ),
    //           LoginForgotPasswordWidget(),
    //           ButtonWidget(
    //             title: "Login",
    //             onTap: () {},
    //           ),
    //           LoginDividerWidget(),
    //           GoogleLoginWidget(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
