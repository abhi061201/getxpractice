import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class snackbarscreen extends StatelessWidget {
  const snackbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          'snackbar screen',
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snackbar Title",
                    "this is message",
                  // showProgressIndicator: true,
                  
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black,
                  colorText: Colors.white

                  );
                },
                child: Text(
                  'show snackbar',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
