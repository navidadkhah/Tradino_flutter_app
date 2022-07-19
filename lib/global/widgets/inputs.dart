import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class Inputs extends StatelessWidget {
  const Inputs({
    Key? key,
    required this.title,
    required this.top,
    required this.bottom,
  }) : super(key: key);
  final String title;
  final int top;
  final int bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: top.h,
            bottom: bottom.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  bottom: 4.h,
                ),
                child: Text(
                  title,
                  style: kNormalBlack14,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 28.w,
                ),
                child: Container(
                  height: 36.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: kBlackWithOp,
                        spreadRadius: 2.w,
                        blurRadius: 8.w,
                        offset: Offset(2.w, 2.w),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(
                      letterSpacing: .5.sp,
                      height: 0.6.h,
                    ),
                    keyboardType: title == "Email"
                        ? TextInputType.emailAddress
                        : TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: kWhite,
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.w,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          15.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.w,
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textInputAction: title == "Password"
                        ? TextInputAction.done
                        : TextInputAction.next,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
