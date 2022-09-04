import 'package:ecommerceapp/controller/auth/signup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/validinput.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("17".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children:  [
           const SizedBox(height: 20,),
         const SizedBox(height: 20,),

         CustomTextTitleAuth(text: "10".tr),            
        const SizedBox(height: 10,),
            
           CustomTextBodyAuth(text: "11".tr,),
          const SizedBox(height: 80),
             CustomTextFormAuth(
              valid: (val){
                return validInput(val!, 5, 20, "username");
              },
              hinttext: "23".tr,
              labeltext: "20".tr,
              iconData: Icons.person_outlined,
              myController: controller.username, 
            ),
           
          const SizedBox(height: 20,),
           CustomTextFormAuth(
            valid: (val){
                return validInput(val!, 10, 14, "phone");
              },
              hinttext: "22".tr,
              labeltext: "Phone Number",
              iconData: Icons.phone_android,
              myController: controller.phoneNumber, 

            ),
         
            const SizedBox(height: 20,),
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
            
             
             // const SizedBox(height: 30,),
               Padding(
               padding: EdgeInsets.fromLTRB(0, 20, 20, 10),
               child: InkWell(
                child: Text("14".tr, textAlign: TextAlign.end,),
                onTap: () {
                  controller.goToForgotPassword();
                },
                 ),
             ),
             CustomButtonAuth(text: "17".tr, onPressed: (){
              controller.signUp();
             }),
              const SizedBox(height: 30,),
             CustomTextSignUpOrSignIn(
              textone: "25".tr, 
              texttwo: "9".tr,
               onTap: (){
                controller.goToSignIn();
               }),
             


            
         
          ],
        ),
      )
    );
  }
}