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
            left: 24,
            right: 36,
          ),
          child: Container(
              width: .8.sw,
              height: 44.w,
              decoration: BoxDecoration(
                  //border:
                  ),
              child: ElevatedButton(
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
