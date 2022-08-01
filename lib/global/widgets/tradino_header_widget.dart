import 'package:flutter/material.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';

class TradinoHeaderWidget extends StatelessWidget {
  const TradinoHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          "Tradino",
          style: kSemiBoldLinear40,
        ),
      ),
    );
  }
}
