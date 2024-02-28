import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Second Screen"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Go Back"),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
