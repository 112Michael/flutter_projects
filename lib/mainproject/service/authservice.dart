import 'dart:convert';
import 'package:flutter_projects/mainproject/model/user.dart';
import 'package:http/http.dart' as http;

import '../model/responselogin.dart';




class AuthService {
  final String apiUrl = "https://www.petroinfotech.com/PetroHSE/api/Admin/ValidateLogin";

  Future<Responselogin?> login(User user) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      print("${response.body}");
      var res=jsonDecode(response.body.toString());
      var data=Responselogin.fromJson(res);
      return data;
      // Successful login logic here

    } else {
      // Handle login failure here
      return null;
    }
  }
}