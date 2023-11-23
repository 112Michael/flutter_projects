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
class Temperatures {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Temperatures({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

}
