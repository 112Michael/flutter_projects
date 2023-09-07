import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Amazone()));
}

class Amazone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("asset/icon/amazone.png", height: 60, width: 60),
          const Text(
            "amazone",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
