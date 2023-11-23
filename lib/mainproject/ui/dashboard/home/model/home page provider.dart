import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_projects/mainproject/ui/dashboard/home/model/resphome.dart';
import 'package:http/http.dart' as http;


class HomePageProvider with ChangeNotifier {
  RespHome? _data;

  RespHome? get data => _data;

  Future<void> fetchData(String? token, num? id) async {
    final url = Uri.parse(
        'https://www.petroinfotech.com/PetroHSE/api/Dashboard/GetHomePage?companyCode=1&userId=610');
    final response = await http.get(
      url,
      headers: {
        "Authorization": "$token",
        "CompanyCode": "1",
        "UserId": "$id",
        "appType": "MOB",
        "content-type": "application/json",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      var data = response.body.toString();
      print(data);
      String cleanedString = data.replaceAll('\\','');
      String cleanedString2 = cleanedString.replaceAll('} ','}');
      String cleanedString3 = cleanedString2.replaceAll(' {','{');
      print(cleanedString3);


      // Attempt to parse the JSON
      Map<String, dynamic> jsonMap = json.decode(cleanedString3);
      print("attempt22222222222222222");
      fetchData2(jsonMap);

    } else {
      throw Exception('Failed to load data');
    }
  }
  void fetchData2(Map<String, dynamic> jsonData) {
    _data = RespHome.fromJson(jsonData);
    notifyListeners();
  }
}