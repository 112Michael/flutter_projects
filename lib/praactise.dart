import'package:flutter/material.dart';
void main()//to execute program main is mandatory
{
  runApp(MaterialApp//run app will attach the widget tree too UI
    (home:Splash())); //initial page
}
class Splash extends StatelessWidget{ // this page not under go any state change
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("hi mic")
        ),
    );
  }
}