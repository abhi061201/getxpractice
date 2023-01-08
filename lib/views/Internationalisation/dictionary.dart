import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxpractice/views/controller/Controller.dart';
import 'package:getxpractice/views/reactiveClass/class.dart';

class dictionary extends StatelessWidget {
  dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dictionaryScreen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'hello'.tr,
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              myController.changeLanguage('hi', 'Hi');
            },
            child: Text(
              'Hindi',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              myController.changeLanguage('fr', 'FR');
            },
            child: const Text(
              'French',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              myController.changeLanguage('en', 'US');
            },
            child: const Text(
              'English',
            ),
          ),
        ],
      ),
    );
  }
}
