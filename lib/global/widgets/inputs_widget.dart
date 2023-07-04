import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/shadows.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/inputs_controller_widget.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.title,
    required this.obscureText,
    this.inputHeight,
    this.radius,
    this.keyboardType,
    this.textInputAction,
    this.textEditingController,
    this.isPasswordVisible,
    this.passwordName,
  }) : super(key: key);

  final String title;
  final bool obscureText;
  final double? inputHeight;
  final double? radius;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? textEditingController;
  final RxBool? isPasswordVisible;
  final String? passwordName;

  @override
  Widget build(BuildContext context) {
    final InputControllerWidget controller = Get.find();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kNormalBlack14,
        ),
        SizedBox(height: 4.0.h),
        Container(
          height: inputHeight ?? 46.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 12.0.r),
            boxShadow: [kInputContainerShadow],
          ),
          child: Obx(
            () {
              final isVisible = isPasswordVisible!.value;

              return TextField(
                textAlignVertical: TextAlignVertical.top,
                obscureText: obscureText
                    ? isVisible
                        ? false
                        : true
                    : false,
                keyboardType: keyboardType,
                controller: textEditingController,
                textInputAction: textInputAction,
                decoration: InputDecoration(
                  suffixIcon: obscureText
                      ? IconButton(
                          onPressed: () {
                            controller.togglePassword1Visible(
                                passwordName.toString());
                          },
                          icon: isVisible
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: kCharcoal,
                                )
                              : const Icon(Icons.visibility),
                        )
                      : null,
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
              );
            },
          ),
        ),
      ],
    );
  }
}
