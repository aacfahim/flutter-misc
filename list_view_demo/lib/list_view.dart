import 'dart:math';

import 'package:flutter/material.dart';

class ListViewContents extends StatelessWidget {
  const ListViewContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list_name = [
      "Ashfaq",
      "Fahim",
      "Afzal",
      "Chowdhury",
      "Karim",
      "Rafiq",
      "Afzal",
    ];

    var rand = Random();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Lists"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: list_name.length,
        itemBuilder: (BuildContext context, var index) {
          return Card(
            child: ListTile(
              title: Text(list_name[index]),
              leading: Icon(
                Icons.person,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
              trailing: Icon(
                Icons.call,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
