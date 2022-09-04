import 'package:ecommerceapp/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      
      onPageChanged: (val){
        print(val);
        controller.onPageChanged(val);
      },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                  
                  children: [         
                    const SizedBox(height: 50,),
                    Image.asset(onBoardingList[index].image!,
                    //  height: 240, width: 200 ,
                    height: Get.width / 1.3,
                      fit: BoxFit.fill,
                     ),

                    const SizedBox(height: 50,),
                    Text(onBoardingList[index].title!,
                     style:const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28, 
                            color: AppColor.black),
                     ),
                    const SizedBox(height: 20,),

                    Text(onBoardingList[index].body!,
                     style:const TextStyle(fontSize: 17,
                              height: 2, color: AppColor.grey,
                              fontWeight: FontWeight.bold ),
                     textAlign: TextAlign.center,),
                  ],
                ),
                );
  }
}