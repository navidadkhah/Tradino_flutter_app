import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class GoogleLoginWidget extends StatelessWidget {
  const GoogleLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        boxShadow: [
          kButtonWidgetShadow1,
          kButtonWidgetShadow2,
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            kCultured,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        onPressed: () {}, // TODO: bind from backend
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              height: 28.h,
              width: 28.w,
              cacheHeight: 40,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              "Login With Google",
              style: kNormalBlack18,
            ),
          ],
        ),
      ),
    );
  }
}
