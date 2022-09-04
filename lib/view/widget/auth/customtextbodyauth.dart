import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextBodyAuth  extends StatelessWidget {
  const CustomTextBodyAuth ({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
              // margin:const EdgeInsets.symmetric(horizontal: 50),
              child: Text(text,
               style: Theme.of(context).textTheme.bodyText1, 
               textAlign: TextAlign.center,)
            );
  }
}