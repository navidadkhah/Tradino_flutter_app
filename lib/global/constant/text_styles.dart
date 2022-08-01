import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final kSemiBoldLinear40 = TextStyle(
  fontWeight: FontWeight.w600,
  foreground: Paint()..shader = linearGradient,
  fontSize: 40.sp,
);

final kSemiBoldGrayBlack32 = TextStyle(
  fontWeight: FontWeight.w600,
  color: kGrayBlack,
  fontSize: 32.sp,
);

final kSemiBoldGreyBlack22 = kSemiBoldGrayBlack32.copyWith(
  fontSize: 22.0.sp,
);

final kNormalBlack14 = TextStyle(
  fontWeight: FontWeight.w400,
  color: kBlack,
  fontSize: 14.sp,
);

final kNormalGrayBlack14 = TextStyle(
  fontWeight: FontWeight.w400,
  color: kGrayBlack,
  fontSize: 14.sp,
);

final kNormalBlue14 = TextStyle(
  fontWeight: FontWeight.w400,
  color: kBlue,
  fontSize: 14.sp,
);
