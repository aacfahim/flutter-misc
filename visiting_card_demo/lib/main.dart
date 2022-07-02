import 'package:flutter/material.dart';
import 'package:visiting_card_demo/vcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visiting Card',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: const Vcard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
