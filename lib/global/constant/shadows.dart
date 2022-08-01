import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final kInputContainerShadow = BoxShadow(
  color: Colors.black12,
  spreadRadius: 0.0.r,
  blurRadius: 10.0.r,
  offset: Offset(0.0.w, 4.0.h),
);

final kButtonWidgetShadow1 = BoxShadow(
  color: const Color(0xFFFAFBFF), // TODO: update me based on color constants
  blurRadius: 10.0.r,
  spreadRadius: 0.0.r,
  offset: Offset(-5.0.w, -5.0.h),
);

final kButtonWidgetShadow2 = BoxShadow(
  color: const Color(0xFF161B1D)
      .withOpacity(0.23), // TODO: update me based on color constants
  blurRadius: 10.0.r,
  spreadRadius: 0.0.r,
  offset: Offset(5.0.w, 5.0.h),
);
