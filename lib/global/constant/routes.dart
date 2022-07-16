import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tradino_flutter/screens/signup/signup_bindings.dart';
import 'package:tradino_flutter/screens/signup/signup_screen.dart';

class Routes {
  static const kSignup = '/signup';

  static final pages = [
    GetPage(
      name: kSignup,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    )
  ];
}
