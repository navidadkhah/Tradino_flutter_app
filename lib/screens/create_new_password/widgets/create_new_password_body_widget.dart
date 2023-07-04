import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_controller_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/create_new_password/create_new_password_controller.dart';

class CreateNewPasswordBodyWidget extends StatelessWidget {
  const CreateNewPasswordBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CreateNewPasswordController controller = Get.find();
    final InputControllerWidget inputController = Get.find();

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
                "Create new password",
                style: kSemiBoldBlack24,
              ),
              SizedBox(height: 24.0.h),
              Text(
                "Please Enter New Password",
                style: kNormalBlack14,
              ),
              SizedBox(height: 32.0.h),
              InputWidget(
                title: "New Password",
                textEditingController: controller.passwordTextController,
                textInputAction: TextInputAction.next,
                radius: 8.0.r,
                inputHeight: 36.0.h,
                obscureText: true,
                isPasswordVisible: inputController.isFirstPasswordVisible,
                passwordName: "isPasswordVisible",
              ),
              SizedBox(height: 20.0.h),
              InputWidget(
                title: "Confirm Password",
                textEditingController: controller.confirmPasswordTextController,
                textInputAction: TextInputAction.done,
                radius: 8.0.r,
                inputHeight: 36.0.h,
                obscureText: true,
                isPasswordVisible: inputController.isSecondPasswordVisible,
                passwordName: "isPassword2Visible",
              ),
              SizedBox(height: 64.0.h),
              ButtonWidget(
                width: double.infinity,
                height: 52.0.h,
                title: "Save",
                onTap: () {
                  Get.offAllNamed("/homepage");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
