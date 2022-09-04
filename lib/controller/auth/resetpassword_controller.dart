 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();

}

class ResetPasswordControllerImp extends ResetPasswordController {

late TextEditingController password;
late TextEditingController repassword;



  @override
  resetPassword() {
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    password = TextEditingController();
    repassword = TextEditingController();
 

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    password.dispose();
    repassword.dispose();

  }
  
  @override
  goToSuccessResetPassword() {
   Get.offNamed(AppRoute.successResetPassword);
  }

}