import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({Key? key, required this.textbutton, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              child: MaterialButton( 
                onPressed: onPressed,
                textColor: Colors.white,
                color: AppColor.primary,
                child:Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

                ),
            );
  }
}