import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/views/Internationalisation/message.dart';
import 'package:getxpractice/views/RoutingusingGetx.dart';
import 'package:getxpractice/views/controller/counterController.dart';
import 'package:getxpractice/views/controller/touppercasecontroller.dart';
import 'package:getxpractice/views/dialogue.dart';
import 'package:getxpractice/views/Internationalisation/dictionary.dart';
import 'package:getxpractice/views/Internationalisation/dictionary.dart';
import 'package:getxpractice/views/reactiveClass/reactiveScreen.dart';
import 'package:getxpractice/views/snackbar.dart';
import 'package:getxpractice/views/stateManagementcounterScreen.dart';
import './views/bottomsheetLightandDarktheme.dart';

void main() => runApp(MyApp());

/* get is used to mainly:
  1. state management  // stateless widget se hi kaam kra skte h stateful ka, ex increment counter
  2. route management  // using getx we dont need to define context everytime
  3. dependancy management   // isme classes se related h thoda
   k kaise one line of code se access krr skte h fuction vagairah

*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // iska internally child hota h material app
      // getmaterial app ki help se hme global context mil jata j
      translations: Messages(),
      locale: Locale('en','US'),
      fallbackLocale:Locale('en','US'),
      title: "snackbar",
      home: dictionary(),
    );
  }
}
