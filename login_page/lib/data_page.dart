import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  DataPage({Key? key, this.emailData, this.passwordData}) : super(key: key);

  String? emailData;
  String? passwordData;

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DATA")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign in Successful!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            Text(
              "Your Email: ${widget.emailData}\n Password: ${widget.passwordData}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
