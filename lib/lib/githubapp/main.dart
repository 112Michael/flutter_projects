

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/lib/githubapp/pages/home_page.dart';
import 'package:flutter_projects/lib/githubapp/providers/dataprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserDataProvider(),
        )
      ],
      child: const GitSnap(),
    ),
  );
}

class GitSnap extends StatelessWidget {
  const GitSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Homepage(),
      ),
    );
  }
}