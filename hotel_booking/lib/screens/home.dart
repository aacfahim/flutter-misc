import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/book_hotel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.asset("images/homepage.jpeg"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookPage()),
                );
              },
              child: const Text("CLICK HERE TO BOOK NOW"),
            )
          ],
        ),
      ),
    );
  }
}
