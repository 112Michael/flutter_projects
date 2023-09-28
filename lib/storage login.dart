import 'package:flutter/material.dart';
import 'package:flutter_projects/Storagehome.dart';

import 'package:shared_preferences/shared_preferences.dart';
void main()
{
  runApp(const MaterialApp(
   home: Logins(),));

}
class Logins extends StatefulWidget {
  const Logins({super.key});



  @override
  State<Logins> createState() => _LoginsState();
}

class _LoginsState extends State<Logins> {
  final email = TextEditingController();
  final passw = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login page'),
        centerTitle: true,
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
              hintText: 'user-mail'),
          controller: email,
        ),
      ),



    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: const InputDecoration
          (border: OutlineInputBorder(),
          hintText:"password must be 5"),
        controller: passw,

        ),
    ),

    ElevatedButton(
    onPressed: () async{
    preferences = await SharedPreferences.getInstance();
    String usermail = email.text;
    String password;
    password = passw.text;
    if(usermail !=""&&passw!='')
    {
    preferences.setString('usermail', email as String );
    preferences.setString('password', passw as String );
    }
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => const Storagehome()));

    email.text ="";
    passw.text= '';
    },
    child: const Text('login'))
    ],
        ),
    ),
    );

    }
  }


