import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/book_hotel.dart';
import 'package:hotel_booking/screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoadingPage(),
      //home: const BookPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
