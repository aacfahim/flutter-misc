import 'package:clothing_app/screens/detail_page.dart';
import 'package:clothing_app/screens/home.dart';
import 'package:clothing_app/screens/landing_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
