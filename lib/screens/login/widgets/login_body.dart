import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs_widget.dart';
import 'package:tradino_flutter/screens/login/widgets/google_login.dart';
import 'package:tradino_flutter/screens/login/widgets/login_divider.dart';
import 'package:tradino_flutter/screens/login/widgets/login_forgot_password.dart';
import 'package:tradino_flutter/screens/login/widgets/login_page_name.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: kCultured,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              40.r,
            ),
            topRight: Radius.circular(
              40.r,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginPageName(),
              InputWidget(
                title: "Email or username",
                inputHeight: 36,
                radius: 10,
                textInputAction: TextInputAction.next,
              ),
              InputWidget(
                title: "Password",
                inputHeight: 36,
                radius: 10,
                textInputAction: TextInputAction.done,
              ),
              LoginForgotPassword(),
              ButtonWidget(
                title: "Login",
                onTap: () {},
              ),
              LoginDivider(),
              GoogleLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
