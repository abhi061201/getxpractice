import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxpractice/views/reactiveClass/class.dart';

class ReactiveScreen extends StatelessWidget {
  ReactiveScreen({super.key});
  ReactiveClass student = ReactiveClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ReactiveScreen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Text(
              'Hii my name is ${student.name.value}',
              style: TextStyle(
                fontSize: 50,
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              student.name.value = student.name.toUpperCase();
            },
            child: const Text(
              'To UpperCase',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              student.name.value = student.name.toLowerCase();
            },
            child: const Text(
              'To Lowercase',
            ),
          ),
        ],
      ),
    );
  }
}
