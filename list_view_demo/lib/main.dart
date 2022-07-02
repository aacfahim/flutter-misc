import 'package:list_view_demo/botton_demo.dart';
import 'package:list_view_demo/list_view.dart';
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
      //home: const ListViewContents(),
      home: const Botton_demo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
