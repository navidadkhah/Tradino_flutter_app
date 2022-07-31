import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class StrategyCardsWidget extends StatelessWidget {
  const StrategyCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 324.0.w,
      height: 456.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0.r),
        boxShadow: [
          kButtonWidgetShadow3,
        ],
        color: kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 44.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "best strategy",
              style: kNormalBlack20,
            ),
            Center(
              child: Container(
                height: 28.0.h,
                width: 112.0.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  color: kLightSilver,
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(24.0.r),
                    splashColor: kMintGreen,
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "more",
                        style: kNormalBlack14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
