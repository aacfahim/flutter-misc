import 'package:flutter/material.dart';

class Botton_demo extends StatelessWidget {
  const Botton_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Buttons"),
        actions: [
          ElevatedButton(onPressed: () {}, child: Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Icon(
                Icons.abc,
                size: 25,
                color: Colors.black,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.pink,
              child: Text('CLick'),
              animationDuration: Duration(seconds: 2),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.logout,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.save,
                color: Colors.black,
                size: 30.0,
              ),
              label: Text('Save'),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  primary: Colors.black,
                  backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
