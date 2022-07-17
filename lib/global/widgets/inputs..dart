import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class Inputs extends StatelessWidget {
  const Inputs({
    Key? key,
    required this.title,
    required this.top,
    required this.bottom,
  }) : super(key: key);
  final String title;
  final int top;
  final int bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: top.w,
            bottom: bottom.w,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 29.w,
                  bottom: 4.w,
                ),
                child: Text(
                  title,
                  style: kNormalBlack14,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  right: 35.w,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, .1),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(height: 0.6.w),
                    keyboardType: title == "Email"
                        ? TextInputType.emailAddress
                        : TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: kWhite,
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.w,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          15.w,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.w,
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textInputAction: title == "Password"
                        ? TextInputAction.done
                        : TextInputAction.next,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
