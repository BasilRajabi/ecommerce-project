import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/verifycode_controller.dart';
import '../../../../core/constant/routes.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';
import '../../../widget/auth/textsignup.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColor.grey),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("-3".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children:  [
           const SizedBox(height: 20,),
         const SizedBox(height: 20,),

         CustomTextTitleAuth(text: "-4".tr),            
        const SizedBox(height: 10,),
            
           CustomTextBodyAuth(text: "-5".tr,),
          const SizedBox(height: 40),
        
          OtpTextField(
              borderRadius: BorderRadius.circular(10),
               fieldWidth: 50,
               textStyle: TextStyle(fontSize: 20),
               
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            Get.offNamed(AppRoute.successResetPassword);
        }, // end onSubmit
    ),
             
             
          ],
        ),
      )
    );
  }
}