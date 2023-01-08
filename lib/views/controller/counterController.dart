import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxpractice/views/controller/Controller.dart';

class CounterController extends StatelessWidget {
  CounterController({super.key});
  MyController myController = Get.put(MyController());
  @override
  
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Screen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(()=>Text('Counter is ${myController.count}', style: TextStyle(fontSize: 50)),
 ),
                   SizedBox(
            height: size.height*0.3,
          ),
          FloatingActionButton(
            onPressed: () {
              myController.increment();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
