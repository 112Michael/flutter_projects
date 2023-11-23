class User {
  User({
    required this.userName,
    required this.password,
    required this.authType,
    this.ipAddress,});

  User.fromJson(dynamic json) {
    userName = json['userName'];
    password = json['password'];
    authType = json['authType'];
    ipAddress = json['ipAddress'];
  }
  late String userName;
  late String password;
  late String authType;
  String? ipAddress;

  get id => null;

  get token => null;

  get image => null;

  get name => null;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = userName;
    map['password'] = password;
    map['authType'] = authType;
    map['ipAddress'] = ipAddress;
    return map;
  }

}