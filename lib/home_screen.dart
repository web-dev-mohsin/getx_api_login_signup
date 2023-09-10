import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_login_signup/controller/registration_controller.dart';

class HomeScreen extends StatelessWidget {
  final controller;

  const HomeScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Controller'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Count: ${controller.count}')),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.increment,
                child: Text('Increment'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.decrement,
                child: Text('Decrement'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: controller.toggleCounting, // Toggle counting
                child: Obx(() {
                  // Change button text based on the isCounting flag
                  return Text(controller.isCounting.value
                      ? 'Stop Counting'
                      : 'Start Counting');
                }),
              ),
            ],
          ),
        ));
  }
}
