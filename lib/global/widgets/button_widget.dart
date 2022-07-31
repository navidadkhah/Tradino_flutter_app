import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.title,
    required this.onTap,
    Key? key,
    this.width,
    this.height,
    this.radius,
    this.boxShadow,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String title;
  final Function() onTap;
  final double? radius;
  final BoxShadow? boxShadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        borderRadius: BorderRadius.circular(radius ?? 24.0.r),
        child: Container(
          decoration: BoxDecoration(
            gradient: kGreenLinearLeftToRight,
            borderRadius: BorderRadius.circular(radius ?? 24.0.r),
            boxShadow: [
              boxShadow ?? kButtonWidgetShadow1,
              kButtonWidgetShadow2,
            ],
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: BorderRadius.circular(radius ?? 24.0.r),
              splashColor: kMintGreen,
              onTap: onTap,
              child: Center(
                child: Text(
                  title,
                  style: kSemiBoldCharcoal24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
