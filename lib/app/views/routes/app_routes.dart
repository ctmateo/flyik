import 'package:flutter/widgets.dart' show BuildContext, Widget;
import 'package:tyfon/app/views/home/home_page.dart';
import 'package:tyfon/app/views/reset_password/forget_password_page.dart';
import 'package:tyfon/app/views/login/login_page.dart';
import 'package:tyfon/app/views/nav_bottom/bottomnavigationbar.dart';
import 'package:tyfon/app/views/pages/splash_screen/splash_page.dart';
import 'package:tyfon/app/views/register/register_page_email.dart';
import 'package:tyfon/app/views/register/register_page_lastname.dart';
import 'package:tyfon/app/views/register/register_page_name.dart';
import 'package:tyfon/app/views/register/register_page_password.dart';
import 'package:tyfon/app/views/routes/routes.dart';
import 'package:tyfon/app/views/selection_account/selection_account.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.SPLASH: (_) => const SplashPage(),
      Routes.LOGIN: (_) => const LoginPage(),
      Routes.HOME: (_) => const HomePage(),
      Routes.REGISTEREMAIL: (_) => const RegisterPageEmail(),
      Routes.REGISTERLASTNAME: (_) => const RegisterPageLastName(),
      Routes.REGISTERNAME: (_) => const RegisterPageName(),
      Routes.REGISTERPASSWORD: (_) => const RegisterPagePassword(),
      Routes.SELECTIONACCOUNT: (_) => const SelectionAccount(),
      Routes.FORGOTPASSWORD: (_) => const ForgetPasswordPage(),
      Routes.LAYERNAV: (_) => const MyStatefulWidget()
    };
