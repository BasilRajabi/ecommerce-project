import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("9".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children:  [
             const SizedBox(height: 20,),
            const LogoAuth(),
           const SizedBox(height: 20,),

           CustomTextTitleAuth(text: "10".tr),            
          const SizedBox(height: 10,),
              
             CustomTextBodyAuth(text: "24".tr,),
            const SizedBox(height: 80),

              CustomTextFormAuth(
                valid: (val){
                  return validInput(val!, 5, 100, "email");
                },
                hinttext: "12".tr,
                labeltext: "18".tr,
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
            const SizedBox(height: 20,),
            CustomTextFormAuth(
              valid: (val){
                  return validInput(val!, 8, 30, "password");
                },
                hinttext: "13".tr,
                labeltext: "19".tr,
                iconData: Icons.lock_outline,
                myController: controller.password,
              ),
               Padding(
                 padding: EdgeInsets.fromLTRB(0, 20, 20, 10),
                 child: InkWell(
                  child: Text("14".tr, textAlign: TextAlign.end,),
                  onTap: () {
                    controller.goToForgotPassword();
                  },
                   ),
               ),
               CustomButtonAuth(text: "9".tr, onPressed: (){
                controller.Login();
               }),
                const SizedBox(height: 30,),
               CustomTextSignUpOrSignIn(
                textone: "16".tr, 
                texttwo: "17".tr,
                 onTap: (){
                  controller.goToSignUp();
                 }),

              
           
            ],
          ),
        ),
      )
    );
  }
}