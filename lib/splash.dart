import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp
    (home:Splashpage()));
}
class Splashpage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
     appBar:AppBar(
         title:Text('welcome back mic')));
}}
