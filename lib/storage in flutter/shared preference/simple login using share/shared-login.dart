import 'package:flutter/material.dart';

class Sharedlogin extends StatefulWidget {
  @override
  State<Sharedlogin> createState() => _SharedloginState();
}

class _SharedloginState extends State<Sharedlogin> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "user email",
                ),
                controller: email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password must be six letter"),
                controller: password,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("login"))
          ],
        ),
      ),
    );
  }
}
