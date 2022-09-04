import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/constant/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?) valid;

  const CustomTextFormAuth({Key? key,
   required this.hinttext,
    required this.labeltext,
     required this.iconData,
       this.myController, required this.valid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
            controller: myController,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:const EdgeInsets.symmetric(horizontal: 15),
                label: Container(
                  margin:const EdgeInsets.symmetric(horizontal : 30),
                  child: Text(labeltext)
                ),
                hintText: hinttext,
                hintStyle: const TextStyle(fontSize: 14),
                suffixIcon: Icon(iconData),
                suffixIconColor: AppColor.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                )
              ),

            );
  }
}