import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';
import '../../../widget/auth/textsignup.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("0".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),), // reset your password

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children:  [
           const SizedBox(height: 20,),
         const SizedBox(height: 20,),

         CustomTextTitleAuth(text: "35".tr),       // new password      
        const SizedBox(height: 10,),
            
           CustomTextBodyAuth(text: "35".tr,),
          const SizedBox(height: 80),
             CustomTextFormAuth(
              valid: (val){
                return validInput(val!, 8, 30, "password");
              },
              hinttext: "34".tr,
              labeltext: "35".tr,
              iconData: Icons.lock_outline,
              myController: controller.password, 
            ),
              const SizedBox(height: 30,),
               CustomTextFormAuth(
                valid: (val){
                return validInput(val!, 8, 30, "password");
              },
              hinttext: "-1".tr,
              labeltext: "-1".tr,
              iconData: Icons.lock_outline,
              myController: controller.repassword, 
            ),
 
            const SizedBox(height: 30,),
             CustomButtonAuth(text: "33".tr, onPressed: (){
              controller.goToSuccessResetPassword();

             }),
             
          ],
        ),
      )
    );
  }
}