 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkemail();
  goToVerifyCode();

}

class ForgotPasswordControllerImp extends ForgotPasswordController {

late TextEditingController email;


  @override
  checkemail() {
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
 

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
  }
  
  @override
  goToVerifyCode() {
   Get.offNamed(AppRoute.verifyCode);
  }

}