import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../reactiveClass/class.dart';


class MyController extends GetxController{

  var reactiveClass= ReactiveClass();
  // var count=0.obs;
  var count=0;
  void touppercase()
  {
    reactiveClass.name.value=reactiveClass.name.value.toUpperCase();
    
  }
   
  void increment(){
    count++;
    update();
  }

  void changeLanguage(var par1  , var par2)
  {
    var locale= Locale(par1, par2);
    Get.updateLocale(locale);
  }

}