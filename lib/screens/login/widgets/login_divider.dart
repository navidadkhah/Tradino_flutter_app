import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Expanded(
          child: Divider(
            color: kGray,
          ),
        ),
        SizedBox(
          height: 56.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: const Text(
            "OR",
          ),
        ),
        const Expanded(
          child: Divider(
            color: kGray,
          ),
        ),
      ],
    );
  }
}
