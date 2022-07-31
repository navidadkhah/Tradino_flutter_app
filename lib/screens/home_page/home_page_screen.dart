import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/button_widget.dart';
import 'package:tradino_flutter/global/widgets/home_pages_header_widget.dart';
import 'package:tradino_flutter/screens/home_page/widgets/home_page_body_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCharcoal,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomePagesHeaderWidget(
              icon: Icon(
                Icons.search,
                size: 40.0.sp,
                color: kWhite,
              ),
              buttonWidget: ButtonWidget(
                title: "Auto Analyse with A.I.",
                width: 300.0.w,
                height: 72.0.h,
                onTap: () {},
                boxShadow: kButtonWidgetShadow3,
                textStyle: kNormalBlack20,
              ),
              hasButton: true,
            ),
            const HomePageBodyWidget(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
