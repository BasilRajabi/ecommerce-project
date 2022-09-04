import 'package:ecommerceapp/view/screen/auth/checkemail.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/forgotpassword.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/verifycodesignup.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/resetpassword.dart';
import 'package:ecommerceapp/view/screen/auth/signup.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/success_resetpassword.dart';
import 'package:ecommerceapp/view/screen/auth/success_signup.dart';
import 'package:ecommerceapp/view/screen/auth/forgotpassword/verifycode.dart';
import 'package:ecommerceapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {

  //auth
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.forgotPassword : (context) => const ForgotPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),
  AppRoute.resetPassword : (context) => const ResetPassword(),
  AppRoute.successResetPassword : (context) => const SuccessResetPassword(),
  AppRoute.successSignUp : (context) => const SuccessSignUp(),
  AppRoute.checkemail : (context) => const CheckEmail(),
  AppRoute.verifyCodeSignUp : (context) => const VerifyCodeSignUp(),



  // onboarding
  AppRoute.onBoarding : (context) => const OnBoarding(),




};