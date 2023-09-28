import 'package:flutter/material.dart';
import 'package:flutter_projects/storage%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storagehome extends StatefulWidget {
  const Storagehome({super.key});


  @override
  State<Storagehome> createState() => _StoragehomeState();
}

class _StoragehomeState extends State<Storagehome> {
  late SharedPreferences prefrences;
  late String username;
  @override
  void initState() {
    fetchData();
    super.initState();
  }
  void fetchData()async{
    prefrences = await SharedPreferences.getInstance();
    setState(() {
      username = prefrences
          .getString('uname')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column (
      children: [
Text("welcome $username"),
        ElevatedButton(onPressed: () {
          prefrences.setBool("newuser", true);
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Logins()));
        },
    child: const Text('logout'))
      ],
        ),
      ),
    );
  }
}
