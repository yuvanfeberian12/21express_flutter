import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_21express/controllers/controllers.dart';

class FormGet extends GetView<TrackController> {
  const FormGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TrackController());
    return Scaffold(
      body: Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.resi,
                      decoration: InputDecoration(
                        labelText: "Nomor Resi",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF18265)),
                        onPressed: () async {
                          controller.track();
                          print(controller.resi.text);
                        },
                        child: Text(
                          'Cari Resi',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ))
                  ],
                ),
              ),
            )),
      
    );
  }
}
