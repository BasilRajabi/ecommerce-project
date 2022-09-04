import 'package:ecommerceapp/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage =0;

  late PageController pageController = PageController();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length -1 ) 
    {
      Get.offAllNamed(AppRoute.login);
    } 
    else {
      pageController.animateToPage(currentPage,
       duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update(); 
  }
  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }

}