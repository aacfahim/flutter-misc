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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.network(
                "https://img.freepik.com/free-vector/hotel-booking_203633-529.jpg"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BookPage()),
                );
              },
              child: Text("CLICK HERE TO BOOK NOW"),
            )
          ],
        ),
      ),
    );
  }
}
