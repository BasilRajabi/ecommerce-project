import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
             fontSize: 28, 
             color: AppColor.black),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
             fontSize: 30,
              color: AppColor.black),
          bodyText1: TextStyle(fontSize: 17,
           height: 2, color: AppColor.grey,
            fontWeight: FontWeight.bold ),
        ),
        primarySwatch: Colors.blue
          );

          ThemeData themeArabic = ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
             fontSize: 28, 
             color: AppColor.black),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
             fontSize: 30,
              color: AppColor.black),
          bodyText1: TextStyle(fontSize: 17,
           height: 2, color: AppColor.grey,
            fontWeight: FontWeight.bold ),
        ),
        primarySwatch: Colors.blue
          );

