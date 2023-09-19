import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  int? phone;
  final String location;
  final String name;

  StatelessPage(
      {super.key, this.phone, required this.location, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.aboreto(fontSize: 40,
                  color: Colors.black),
            ),
            Text(
              location,
              style: GoogleFonts.aboreto(fontSize: 30,
                  color: Colors.black),
            ),
            Text(
              '$phone',
              style:
              GoogleFonts.aboreto(fontSize: 10,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}