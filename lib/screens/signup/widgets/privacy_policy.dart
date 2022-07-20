import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool valuefirst = false;

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
          ),
          child: Checkbox(
            checkColor: Colors.greenAccent,
            activeColor: kMintGreen,
            focusColor: kWhite,
            value: valuefirst,
            onChanged: (args) {},
          ),
        ),
        Text(
          "I Agree with",
          style: kNormalCharcoal14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalRoyalBlue14,
          ),
          onPressed: () {
            print("privacy policy page");
          },
          // TODO: letter of privacy policy and with Getx.snackbar
          child: const Text(
            'privacy and policy',
            style: TextStyle(
              color: kRoyalBlue,
            ),
          ),
        ),
      ],
    );
  }
}
