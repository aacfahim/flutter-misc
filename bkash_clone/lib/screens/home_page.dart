import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color AccentColor = Color(0xffE2136E);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: AccentColor,
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1)),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Ashfaq Afzal Chowdhury",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: AccentColor,
                    radius: 12,
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Tap for Balance",
                    style: TextStyle(color: AccentColor, fontSize: 15),
                  ),
                ],
              ),
            )
          ]),
          actions: [
            Icon(
              Icons.emoji_events,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                "images/logo.png",
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
