import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class GreenButtons extends StatelessWidget {
  const GreenButtons({
    Key? key,
    required this.title,
    required this.top,
  }) : super(key: key);
  final String title;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(
              20.w,
            ),
            onTap: (() {
              print("object");
            }),
            child: Padding(
              padding: EdgeInsets.only(
                top: top.h,
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
                      offset: Offset(2.w, 2.w),
                    ),
                  ],
                  gradient: kGreenLinear,
                  borderRadius: BorderRadius.circular(
                    20.w,
                  ),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.w,
                        ),
                      ),
                    ),
                  ),
                  onPressed: null, // TODO: bind from backend
                  child: Text(
                    title,
                    style: kSemiBoldGrayBlack24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
