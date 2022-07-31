import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EachMarketWidget extends StatelessWidget {
  const EachMarketWidget({
    Key? key,
    required this.title,
    required this.style,
    this.decoration,
  }) : super(key: key);

  final String title;
  final TextStyle style;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 72.0.w,
      height: 28.0.h,
      decoration: decoration,
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
