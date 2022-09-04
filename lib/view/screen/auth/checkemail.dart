import 'package:ecommerceapp/controller/auth/signup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceapp/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../../../controller/auth/checkemail_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
      iconTheme: const IconThemeData(color: AppColor.grey),

        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("27".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),

      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children:  [
           const SizedBox(height: 20,),
         const SizedBox(height: 20,),

         CustomTextTitleAuth(text: "38".tr),            
        const SizedBox(height: 10,),
            
           CustomTextBodyAuth(text: "29".tr,),
          const SizedBox(height: 80),
             CustomTextFormAuth(
              valid: (val){
                return validInput(val!, 5, 100, "email");
              },
              hinttext: "12".tr, // enter your email
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