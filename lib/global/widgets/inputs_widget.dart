import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    required this.title,
    this.inputHeight,
    this.radius,
    this.obscureText,
    Key? key,
    this.keyboardType,
    this.suffix,
    this.textInputAction,
    this.textEditingController,
    this.suffixIcon,
  }) : super(key: key);

  final String title;
  final double? inputHeight;
  final double? radius;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final TextInputAction? textInputAction;
  final TextEditingController? textEditingController;
  final IconButton? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: kNormalBlack14),
        SizedBox(height: 4.0.h),
        Container(
          height: inputHeight ?? 46.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 12.0.r),
            boxShadow: [kInputContainerShadow],
          ),
          child: TextField(
            obscureText: obscureText ?? false,
            keyboardType: keyboardType,
            controller: textEditingController,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              // suffix: suffix,
              border: InputBorder.none,
              fillColor: kWhite,
              filled: true,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? 12.0.r),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(radius ?? 12.0.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius ?? 12.0.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
