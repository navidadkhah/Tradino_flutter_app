import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class BackTextWidget extends StatelessWidget {
  const BackTextWidget({
    Key? key,
    required this.title,
    required this.pageName,
    required this.getName,
  }) : super(key: key);
  final String title;
  final String pageName;
  final String getName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: kNormalBlack14,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: kNormalRoyalBlue14,
          ),
          onPressed: () {
            Get.offAllNamed(getName);
          },
          child: Text(
            pageName,
            style: const TextStyle(
              color: kRoyalBlue,
            ),
          ),
        ),
      ],
    );
  }
}
