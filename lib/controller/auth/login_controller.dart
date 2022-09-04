import 'package:auto_animated/auto_animated.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSignUp();
  goToForgotPassword();
}
class LoginControllerImp extends LoginController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

late TextEditingController email;
late TextEditingController password;

  @override
  Login() {

    var formdata = formstate.currentState;
    if (formdata!.validate()){
      print("valid");
    } else {
      print("invalid");
    }
   
  }
  
  @override
  goToSignUp() {
   Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
  }
  
  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }

}