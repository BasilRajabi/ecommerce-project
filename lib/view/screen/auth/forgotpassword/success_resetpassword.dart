import 'package:ecommerceapp/controller/auth/successresetpassword_controller.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());
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
              "36".tr,
              style: Theme.of(context).textTheme.headline2!.copyWith(color: AppColor.primary,),
               textAlign: TextAlign.center,
              ),
              Text(
              "-2".tr,
              style: Theme.of(context).textTheme.headline2!.copyWith(color: AppColor.primary, fontSize: 25),
               textAlign: TextAlign.center,
              ),
              const Spacer(),

              Container(
                width: double.infinity,
                child: CustomButtonAuth(text: "31".tr,
                           onPressed: (){
controller.goToPageLogin();                 },
                ),
              ),
              const SizedBox(height: 50,)
        ]),
      ),
    );
  }
}