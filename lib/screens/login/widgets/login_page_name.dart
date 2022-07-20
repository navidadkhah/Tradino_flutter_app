import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class LoginPageName extends StatelessWidget {
  const LoginPageName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Login",
            style: kNormalCharcoal36,
          ),
        ],
      ),
    );
  }
}
