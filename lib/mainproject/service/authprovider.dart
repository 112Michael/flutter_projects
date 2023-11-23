import 'package:flutter_projects/mainproject/model/responselogin.dart';


import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  Responselogin _responselogin=Responselogin();

  Responselogin get responselogin => _responselogin;

  bool get isAuthenticated => _isAuthenticated;
  void updateresp(Responselogin res){
    _responselogin=res;
    notifyListeners();
  }
  void setAuthenticated(bool value) {
    _isAuthenticated = value;
    notifyListeners();
  }
}