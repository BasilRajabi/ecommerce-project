import 'package:get/get.dart';

validInput(String val,int min,int max,String type) {

if (type == "username"){
  if(!GetUtils.isUsername(val)){
    return "invalid username";
  }
}

if (type == "email"){
  if(!GetUtils.isEmail(val)){
    return "invalid email";
  }
}

if (type == "phone"){
  if(!GetUtils.isPhoneNumber(val)){
    return "invalid phone number";
  }
}
if(val.isEmpty ){
  return "field cannot be empty";
}
if(val.length < min){
  return "value can't be less than $min";
}
if(val.length > max){
  return "value can't be larger than $max";
}





}