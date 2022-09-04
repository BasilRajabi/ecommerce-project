import 'package:ecommerceapp/controller/auth/signup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgotpassword_controller.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';
import '../../../widget/auth/textsignup.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller = Get.put(ForgotPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
      iconTheme: const IconThemeData(color: AppColor.grey),

        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("14".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),// forgot password

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children:  [
           const SizedBox(height: 20,),
         const SizedBox(height: 20,),

         CustomTextTitleAuth(text: "27".tr),      // check email      
        const SizedBox(height: 10,),
            
           CustomTextBodyAuth(text: "29".tr,), // please enter you email to recieve ...
          const SizedBox(height: 80),
             CustomTextFormAuth(
              valid: (val){
                return validInput(val!, 5, 100, "email");
              },
              hinttext: "12".tr, // enter you email
              labeltext: "18".tr, // email
              iconData: Icons.email_outlined,
              myController: controller.email, 
            ),
              const SizedBox(height: 30,),
 
              
             CustomButtonAuth(text: "30".tr, onPressed: (){ // check
              controller.goToVerifyCode();
             }),
              const SizedBox(height: 30,),
             
          ],
        ),
      )
    );
  }
}