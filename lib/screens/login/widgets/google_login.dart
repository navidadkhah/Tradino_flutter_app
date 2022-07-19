import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 28.w,
          ),
          child: Container(
            width: .8.sw,
            height: 44.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kBlackWithOp,
                  spreadRadius: 2.w,
                  blurRadius: 4.w,
                  offset: Offset(
                    2.w,
                    2.w,
                  ),
                ),
              ],
              color: kWhite,
              //gradient: kWhiteLinear,
              borderRadius: BorderRadius.circular(
                10.w,
              ),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.w,
                    ),
                  ),
                ),
              ),
              onPressed: null, // TODO: bind from backend
              child: Text(
                "Login With Google",
                style: kNormalBlack18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
