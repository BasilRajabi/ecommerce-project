import 'package:ecommerceapp/core/localization/translation.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/routes.dart';
import 'package:ecommerceapp/test.dart';
import 'package:ecommerceapp/view/screen/language.dart';
import 'package:ecommerceapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/constant/color.dart';
import 'core/localization/changelocal.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      routes: routes,
      locale: controller.language,
    
      title: 'Flutter Demo',
      theme: controller.appTheme,
      home: const Language(),
    );
  }
}

