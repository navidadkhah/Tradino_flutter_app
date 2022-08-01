import 'package:get/get.dart';
import 'global/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'screens/forgot_password/forgot_password_controller.dart';
import 'package:tradino_flutter/screens/signup/signup_controller.dart';
import 'package:tradino_flutter/global/widgets/inputs_controller_widget.dart';
import 'package:tradino_flutter/screens/create_new_password/create_new_password_controller.dart';

void main() {
  initialControllers();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 898),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Tradiono App',
          debugShowCheckedModeBanner: false,
          getPages: Routes.pages,
          initialRoute: Routes.kOpeningScreen,
          theme: ThemeData(
            scaffoldBackgroundColor: kCultured,
            primaryColor: kCharcoal,
            fontFamily: "OpenSans",
          ),
        );
      },
    );
  }
}

initialControllers() {
  Get.put(SignupController(), permanent: true);
  Get.put(ForgotPasswordController(), permanent: true);
  Get.put(InputControllerWidget(), permanent: true);
  Get.put(CreateNewPasswordController(), permanent: true);
}
