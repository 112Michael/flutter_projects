import 'dart:convert';

Responselogin responseloginFromJson(String str) => Responselogin.fromJson(json.decode(str));
String responseloginToJson(Responselogin data) => json.encode(data.toJson());
class Responselogin {
  Responselogin({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.password,
    this.pwdPrompt,
    this.confirmPassword,
    this.token,
    this.message,
    this.compCode,
    this.module,
    this.msgType,
    this.authType,
    this.ipAddress,});

  Responselogin.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    password = json['password'];
    pwdPrompt = json['pwdPrompt'];
    confirmPassword = json['confirmPassword'];
    token = json['token'];
    message = json['message'];
    compCode = json['compCode'];
    module = json['module'];
    msgType = json['msgType'];
    authType = json['authType'];
    ipAddress = json['ipAddress'];
  }
  num? id;
  dynamic firstName;
  dynamic lastName;
  dynamic username;
  dynamic password;
  String? pwdPrompt;
  dynamic confirmPassword;
  String? token;
  String? message;
  num? compCode;
  dynamic module;
  num? msgType;
  dynamic authType;
  dynamic ipAddress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['username'] = username;
    map['password'] = password;
    map['pwdPrompt'] = pwdPrompt;
    map['confirmPassword'] = confirmPassword;
    map['token'] = token;
    map['message'] = message;
    map['compCode'] = compCode;
    map['module'] = module;
    map['msgType'] = msgType;
    map['authType'] = authType;
    map['ipAddress'] = ipAddress;
    return map;
  }

}