import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        padding:const EdgeInsets.symmetric(vertical: 15),
        onPressed: onPressed,
        color: AppColor.primary,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(text),
          )
    );
  }
}