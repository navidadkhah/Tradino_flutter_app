import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/green_buttons.dart';
import 'package:tradino_flutter/global/widgets/inputs.dart';
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
          color: kWhiteGray,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              40.w,
            ),
            topRight: Radius.circular(
              40.w,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              LoginPageName(),
              Inputs(
                title: "Email or username",
                top: 36,
                bottom: 16,
              ),
              Inputs(
                title: "Password",
                top: 0,
                bottom: 16,
              ),
              LoginForgotPassword(),
              GreenButtons(
                title: "Login",
                top: 8,
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
