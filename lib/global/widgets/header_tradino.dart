import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tradino",
            style: kSemiBoldLinear40,
          ),
        ],
      ),
    );
  }
}
