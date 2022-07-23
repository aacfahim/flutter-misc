import 'package:flutter/material.dart';
import 'package:travel_app/screens/page_one.dart';
import 'package:travel_app/screens/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: PageOne(),
      home: PageTwo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
