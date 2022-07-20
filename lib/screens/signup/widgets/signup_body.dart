import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/inputs.dart';
import 'package:tradino_flutter/screens/signup/widgets/back_to_signin.dart';
import 'package:tradino_flutter/screens/signup/widgets/privacy_policy.dart';
import 'package:tradino_flutter/screens/signup/widgets/signup_page_name.dart';
import '../../../global/constant/colors.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: kCultured,
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
              SignupPageName(),
              Inputs(
                title: "Username",
                top: 24,
                bottom: 16,
              ),
              Inputs(
                title: "Email",
                top: 0,
                bottom: 16,
              ),
              Inputs(
                title: "Password",
                top: 0,
                bottom: 16,
              ),
              PrivacyPolicy(),
              ButtonWidget(
                title: "Sign Up",
                top: 16,
              ),
              BackToSignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
