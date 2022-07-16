import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(49, 61, 76, 1),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tradino",
                  style: TextStyle(
                    fontSize: 41.w,
                    fontWeight: FontWeight.w600,
                    foreground: Paint()..shader = linearGradient,
                  ),
                ),
              ],
            ),
            // Container(
            //   width: 390.w,
            //   height: 298.w,
            //   color: Colors.amber,
            // )
          ],
        ),
      ),
    );
  }
}
