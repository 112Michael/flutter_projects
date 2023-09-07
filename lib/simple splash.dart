import'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp

    (home: Splashsimple()));
}
class Splashsimple extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(backgroundColor:Colors.yellow,
      body:Center(
        child:Text("kariq",style:TextStyle(fontSize:60,fontWeight:FontWeight.bold,
        color:Colors.black87,
        ),
    )
      ));
  }
}