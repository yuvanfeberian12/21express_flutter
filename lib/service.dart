import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_21express/controllers/controllers.dart';
import 'package:test_21express/views/result.dart';

class trackServices extends GetConnect implements GetxService {
  final trackC = Get.put(TrackController());

  track() async {
    try {
      print('service');
      print(trackC.resi.text);
      final params = {
        'resi_no': trackC.resi.text,
      };
        final uri = Uri.https('partner-api.21express.co.id','/publics/tracking', params);
        http.Response response = await http.get(
            uri,
            headers: {
              'Api-Key':'X*kLJ=GDcA1q',
              'Sisco-Token':'AFHK/U9L0LSDYSZNQCX+JY3BUJG5LBUU/ZYMTTS2ONWST9JP6DCDRDP8JDUXFYUB',
            });
      if (response.statusCode == 200) {
        // print(json.decode(response.body)['express21']['results']);
        final result = json.decode(response.body)['express21']['results'];
        Get.to(()=> Result(getTrack: result));
      } else {
        // print(json.decode(response.body)['express21']['status']['error_message']);
        Get.defaultDialog(
            title: 'Alert',
            middleText: json.decode(response.body)['express21']['status']['error_message'],
            onConfirm: () {
              Get.back();
            });
      }
    } finally {}
  }
}
