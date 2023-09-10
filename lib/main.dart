import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_login_signup/controller/registration_controller.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterController _counterController = Get.put(CounterController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        'homepage': (context) => HomeScreen(controller: _counterController),
      },
      home: HomeScreen(controller: _counterController),
    );
  }
}
