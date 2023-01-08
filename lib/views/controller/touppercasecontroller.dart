import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxpractice/views/controller/Controller.dart';

class controllerToUpperCaseEx extends StatelessWidget {
  const controllerToUpperCaseEx({super.key});

  @override
  Widget build(BuildContext context) {
    MyController mycontroller = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text('controller'),
      ),
      body: Column(
        children: [
          Obx(() {
            return Text(
              "Hii my name is ${mycontroller.reactiveClass.name}",
            );
          }),
          ElevatedButton(
            onPressed: () {
              mycontroller.touppercase();
            },
            child: Text('To uppercase'),
          ),
        ],
      ),
    );
  }
}
