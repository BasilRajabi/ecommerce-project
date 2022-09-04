import 'package:ecommerceapp/controller/auth/successsignup_controller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/routes.dart';


class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text("32".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),

      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
         
          children: [
             const Center(child: Icon(Icons.check_circle_outline, size: 170, color: AppColor.primary,)),
             const SizedBox(height: 30,),
              Text(
              "37".tr,
              style: Theme.of(context).textTheme.headline2!.copyWith(color: AppColor.primary,),
               textAlign: TextAlign.center,
              ),
              Text(
              "38".tr,
              style: Theme.of(context).textTheme.headline2!.copyWith(color: AppColor.primary, fontSize: 25),
               textAlign: TextAlign.center,
              ),
              const Spacer(),

              Container(
                width: double.infinity,
                child: CustomButtonAuth(text: "31".tr,
                           onPressed: (){
controller.goToPageLogin();
                 },
                ),
              ),
              const SizedBox(height: 50,)
        ]),
      ),
    );
  }
}