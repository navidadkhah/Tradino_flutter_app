import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class VerificationHeaderWidget extends StatelessWidget {
  const VerificationHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(width: 8.0.w),
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kMintGreen,
                size: 30.0.sp,
              )),
          SizedBox(
            width: 48.0.w,
          ),
          Text(
            "Tradino",
            style: kSemiBoldLinear40,
          ),
        ],
      ),
    );
  }
}
