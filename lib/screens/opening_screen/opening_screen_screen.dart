import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class OpeningScreenScreen extends StatelessWidget {
  const OpeningScreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: kGreenLinearTopToBottom,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 180.0.h),
              child: Column(
                children: [
                  Text(
                    "Tradino",
                    style: kBoldCharcoal56,
                  ),
                  Text(
                    "Trade with A.I.",
                    style: kSemiBoldCharcoal24,
                  ),
                ],
              ),
            ),
          ),
          //TODO: remove this after bind from backend
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.offAllNamed("/login");
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      ),
    );
  }
}
