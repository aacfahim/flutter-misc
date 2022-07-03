import 'dart:math';

import 'package:flutter/material.dart';

class ListCustom extends StatelessWidget {
  const ListCustom({Key? key}) : super(key: key);
  /*



  */

  @override
  Widget build(BuildContext context) {
    // var lists = [
    //   "10",
    //   "20",
    //   "30",
    // ];

    List lists = [
      {"name": "GP Offer", "phone": "121"},
      {"name": "Chaldal", "phone": "0420"},
      {"name": "Govt info", "phone": "1629"},
      {"name": "Chaldal", "phone": "0420"},
      {"name": "Robi", "phone": "0420"},
      {"name": "Chaldal", "phone": "0420"},
      {"name": "foodpanda", "phone": "0420"},
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Call list"),
          backgroundColor: Color.fromARGB(255, 15, 69, 64),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                    'https://i.pinimg.com/originals/24/97/4c/24974c561a677499ee19159f850de1cd.jpg'),
              ),
            ),
            ListView.builder(
              itemCount: lists.length,
              itemBuilder: (context, index) {
                return ListTile(
                  textColor: Colors.white,
                  leading: CircleAvatar(
                    child: Text(lists[index]["name"][0]),
                    backgroundColor: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                  ),
                  title: Text(
                    lists[index]["name"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(lists[index]["phone"]),
                  trailing: Icon(
                    Icons.call_missed_rounded,
                    color: Colors.yellow,
                  ),
                );
              },
            ),
            // Container(
            //   child: Text("Hello"),
            // ),
          ],
        ));
  }
}
