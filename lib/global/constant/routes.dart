import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tradino_flutter/screens/create_new_password/create_new_password_bindings.dart';
import 'package:tradino_flutter/screens/create_new_password/create_new_password_screen.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_bindings.dart';
import 'package:tradino_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:tradino_flutter/screens/login/login_bindings.dart';
import 'package:tradino_flutter/screens/login/login_screen.dart';
import 'package:tradino_flutter/screens/privacy/privacy_screen.dart';
import 'package:tradino_flutter/screens/signup/signup_bindings.dart';
import 'package:tradino_flutter/screens/signup/signup_screen.dart';
import 'package:tradino_flutter/screens/verify_email/verify_email_bindings.dart';
import 'package:tradino_flutter/screens/verify_email/verify_email_screen.dart';

class Routes {
  static const kSignup = '/signup';
  static const kLogin = '/login';
  static const kPrivacy = '/privacy';
  static const kForgotPassword = '/forgotpassword';
  static const kVerifyEmail = '/verifyemail';
  static const kCreateNewPassword = '/createnewpassword';

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
    GetPage(
      name: kForgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBindings(),
    ),
    GetPage(
      name: kVerifyEmail,
      page: () => const VerifyEmailScreen(),
      binding: VerifyEmailBindings(),
    ),
    GetPage(
      name: kCreateNewPassword,
      page: () => const CreateNewPasswordScreen(),
      binding: CreateNewPasswordBindings(),
    ),
  ];
}
