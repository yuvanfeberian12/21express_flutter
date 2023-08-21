import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_21express/views/form_get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Tracking Order 21Express')),
          ),
          body: FormGet()),
    );
  }
}


