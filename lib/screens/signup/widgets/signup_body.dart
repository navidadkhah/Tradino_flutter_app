import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_controller_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';
import 'package:tradino_flutter/screens/signup/widgets/back_to_signin.dart';
import 'package:tradino_flutter/screens/signup/widgets/privacy_policy.dart';
import '../../../global/constant/colors.dart';

class SignupBodyWidget extends StatelessWidget {
  const SignupBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find();
    final InputControllerWidget visiblityController =
        Get.put(InputControllerWidget());

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
                  "Sign Up",
                  style: kSemiBoldCharcoal32,
                ),
              ),
              SizedBox(height: 24.0.h),
              InputWidget(
                title: "Username",
                textEditingController: controller.usernameTextController,
                textInputAction: TextInputAction.next,
                radius: 10,
                inputHeight: 48,
                obscureText: false,
              ),
              SizedBox(height: 12.0.h),
              InputWidget(
                title: "Email",
                textEditingController: controller.emailTextController,
                textInputAction: TextInputAction.next,
                radius: 10,
                inputHeight: 48,
                keyboardType: TextInputType.emailAddress,
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
              const PrivacyPolicyCheckBoxWidget(),
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
                child: BackToSignInWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
