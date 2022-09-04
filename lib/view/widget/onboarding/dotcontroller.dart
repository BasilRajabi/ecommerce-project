import 'package:ecommerceapp/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(onBoardingList.length, 
                (index) =>AnimatedContainer(
                  duration:const Duration(milliseconds: 300),
                  height: 6,
                  width: controller.currentPage == index ? 20 : 6,
                  decoration: BoxDecoration(
                    
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  margin: const EdgeInsets.only(right: 5)
                  
                )
                 )
                  ],
                ),
    
    );
  }
}