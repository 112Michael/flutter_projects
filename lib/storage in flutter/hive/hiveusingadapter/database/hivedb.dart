import 'package:flutter_projects/storage%20in%20flutter/hive/hiveusingadapter/models/usermodel.dart';
import 'package:hive/hive.dart';

class HiveDb {
  HiveDb.internal();
  static HiveDb instance = HiveDb.internal();
  factory HiveDb() {
    // factory constructor for creating singleton class
    return instance; // (these class have only one instance)
  }

  //add user email and password to hive db
  Future<void> addUser(User user) async {
    final db = await Hive.openBox<User>('userData');
    db.put(user.id, user);
  }

  // read user datas from hive db
  Future<List<User>> getUser() async {
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
  }
}
