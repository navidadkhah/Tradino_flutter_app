import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';

class HomePagesHeaderWidget extends StatelessWidget {
  const HomePagesHeaderWidget({
    Key? key,
    required this.icon,
    required this.hasButton,
    this.buttonWidget,
  }) : super(key: key);

  final Icon icon;
  final bool hasButton;
  final ButtonWidget? buttonWidget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 12.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShaderMask(
                  child: SizedBox(
                    child: IconButton(
                      alignment: Alignment.topLeft,
                      iconSize: 40.0.sp,
                      onPressed: () {}, // TODO: fix it in next faze
                      icon: icon,
                    ),
                  ),
                  shaderCallback: (_) {
                    final Rect rect = Rect.fromLTRB(0, 0, 40.0.w, 40.0.h);
                    return kGreenLinearTopToBottom.createShader(rect);
                  },
                ),
                Text(
                  "Tradino",
                  style: kSemiBoldLinear24,
                ),
                ShaderMask(
                  child: SizedBox(
                    child: IconButton(
                      iconSize: 40.0.sp,
                      onPressed: () {}, // TODO: fix it in next faze
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: kWhite,
                        size: 40.0.sp,
                      ),
                    ),
                  ),
                  shaderCallback: (_) {
                    final Rect rect = Rect.fromLTRB(0, 0, 50.0.w, 40.0.h);
                    return kGreenLinearLeftToRight.createShader(rect);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0.h),
            if (hasButton) ...[
              buttonWidget!,
            ]
          ],
        ),
      ),
    );
  }
}
