import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DialogueScreen extends StatelessWidget {
  const DialogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dialogue Screen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialogue box",
                  middleText: "here you can type msgs",
                  onCancel: (){},
                  onConfirm: (){},
                );
                
              },
              child: Text('show dialogue box'),
            ),
          )
        ],
      ),
    );
  }
}
