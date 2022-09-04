 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();

}

class VerifyCodeControllerImp extends VerifyCodeController {

late String verifycode;


  @override
  checkCode() {

  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
 

  }
   
  @override
  goToResetPassword() {
   Get.offNamed(AppRoute.resetPassword);
  }

}