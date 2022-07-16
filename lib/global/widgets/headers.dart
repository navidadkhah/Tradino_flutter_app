import 'package:flutter/material.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tradino",
            style: kSemiBoldLinear41,
          ),
        ],
      ),
    );
  }
}
