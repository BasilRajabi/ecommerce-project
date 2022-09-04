import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  const CustomTextSignUpOrSignIn({Key? key, required this.textone, required this.texttwo,required this.onTap}) : super(key: key);
final String textone;
final String texttwo;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(textone, style: Theme.of(context).textTheme.bodyText1,),
              InkWell(
                onTap: onTap,
                child: Text("  $texttwo", style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.primary)),
              )
             ],);
  }
}