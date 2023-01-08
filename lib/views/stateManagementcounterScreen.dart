import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  var x= 0.obs;    
  // Here var is Rxint or Reative integer
  // it is a type of int which used in getx
  void increment (){
    x++;
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Screen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            // to update the value of x which is reactive we have to put text inside the obx
            child: Obx((){
              return Text(x.toString(),style: TextStyle(fontSize: 50),);
            }),
          ),
          SizedBox(height:100,),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
            increment();
            print(x);
          }),
        ],
      ),
    );
  }
}


