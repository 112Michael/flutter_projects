import 'package:flutter/material.dart';
import 'package:flutter_projects/data%20passing%20screens/using%20constructor/to_stateful_page.dart';
import 'package:flutter_projects/data%20passing%20screens/using%20constructor/to_stateles_page.dart';


void main() {
  runApp(MaterialApp(
    home: DataPage(),
  ));
}

class DataPage extends StatelessWidget {
  String name = "Apple";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,

      appBar: AppBar(
        title: const Text('Passing Data between Screens Using Constructor'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatelessPage(
                          name: name,
                          location: "Thrissur",
                          phone: 9061567251)));
                },
                child: const Text("Stateless Page")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatefulPage(
                          name: name,
                          location: "wayanad",
                          phone: 9061567251)));
                },
                child: const Text("To Stateful Page"))
          ],
        ),
      ),
    );
  }

}


