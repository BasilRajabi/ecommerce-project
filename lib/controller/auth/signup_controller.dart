 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  goToForgotPassword();

}

class SignUpControllerImp extends SignUpController {

late TextEditingController email;
late TextEditingController password;
late TextEditingController username;
late TextEditingController phoneNumber;

  @override
  signUp() {
    Get.offNamed(AppRoute.checkemail);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phoneNumber = TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    username.dispose();
    phoneNumber.dispose();
    password.dispose();
  }
  
  @override
  goToSignIn() {
   Get.offNamed(AppRoute.login);
  }
  
  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }

}