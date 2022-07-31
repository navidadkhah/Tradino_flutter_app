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
  final ButtonWidget? buttonWidget;
  final bool hasButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 12.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ShaderMask(
                  child: SizedBox(
                    child: IconButton(
                      onPressed: null, //TODO: fix it in next faze
                      icon: icon,
                    ),
                  ),
                  shaderCallback: (Rect bounds) {
                    final Rect rect = Rect.fromLTRB(0, 0, 40, 40);
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
                      onPressed: null, // //TODO: fix it in next faze
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: kAquamarine,
                        size: 40.0.sp,
                      ),
                    ),
                  ),
                  shaderCallback: (Rect bounds) {
                    final Rect rect = Rect.fromLTRB(0, 0, 40.0.w, 40.0.h);
                    return kGreenLinearTopToBottom.createShader(rect);
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
