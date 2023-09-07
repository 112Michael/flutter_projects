import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splashsimple()));
}

class Splashsimple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('asset/icon/spottify.png', height: 80, width: 80),
          const Text(
            "spotify",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white38,
            ),
          ),
        ]),
      ),
    );
  }
}
