import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tradino_flutter/screens/login/login_bindings.dart';
import 'package:tradino_flutter/screens/login/login_screen.dart';
import 'package:tradino_flutter/screens/privacy/privacy_screen.dart';
import 'package:tradino_flutter/screens/signup/signup_bindings.dart';
import 'package:tradino_flutter/screens/signup/signup_screen.dart';

import '../../screens/login/login_bindings.dart';

class Routes {
  static const kSignup = '/signup';
  static const kLogin = '/login';
  static const kPrivacy = '/privacy';

  static final pages = [
    GetPage(
      name: kSignup,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: kLogin,
      page: () => const LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: kPrivacy,
      page: () => const PrivacyScreen(),
      binding: LoginBindings(),
    ),
  ];
}
