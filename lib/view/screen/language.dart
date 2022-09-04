import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/localization/changelocal.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import 'onboarding.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyServices());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("1".tr, style: Theme.of(context).textTheme.headline1 ),
          const SizedBox(height: 30,),
            CustomButtonLang(textbutton: "Ar", onPressed: (){
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
            }),
            CustomButtonLang(textbutton: "En", onPressed: (){
              controller.changeLang('en');
            Get.toNamed(AppRoute.onBoarding);

            }),



        ]
        ),
      ),
    );
  }
}