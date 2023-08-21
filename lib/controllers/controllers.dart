import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_21express/service.dart';

class TrackController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController resi = TextEditingController();

  track() async {
    trackServices().track();
    print(resi.text);
  }
}