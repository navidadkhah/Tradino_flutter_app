import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
        Padding(
          padding: EdgeInsets.only(
            top: top,
            left: 20.w,
            right: 28.w,
          ),
          child: Container(
              width: .8.sw,
              height: 44.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kBlackWithOp,
                    spreadRadius: 10.w,
                    blurRadius: 14.w,
                    offset: const Offset(0, 3),
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
                onPressed: null,
                child: Text(
                  title,
                  style: kGrayBlackBlack24,
                ),
              )),
        ),
      ],
    );
  }
}
