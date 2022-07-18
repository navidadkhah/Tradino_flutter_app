import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class SignupPageName extends StatelessWidget {
  const SignupPageName({Key? key}) : super(key: key);

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
            "Sign Up",
            style: kSemiBoldGrayBlack24,
          ),
        ],
      ),
    );
  }
}
