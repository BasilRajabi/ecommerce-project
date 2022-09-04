 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkEmail();
  goToSuccessSignUp();

}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

late String verifycode;


  @override
  checkEmail() {

  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
 

  }
   
  @override
  goToSuccessSignUp() {
   Get.offNamed(AppRoute.successSignUp);
  }

}