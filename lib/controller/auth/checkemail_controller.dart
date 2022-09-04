 import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToVerifyCode();

}

class CheckEmailControllerImp extends CheckEmailController {

late TextEditingController email;


  @override
  checkemail() {

  }

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCodeSignUp);
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
  
  
  
  
  

}