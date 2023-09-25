import'package:flutter/material.dart';
void main(
runAopp(MaterialApp(
home:Login(),
));
class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar:Appbar(
    title: Text('login page')
    )

    )
  }
}
