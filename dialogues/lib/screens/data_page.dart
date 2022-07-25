import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  DataPage({Key? key, this.name}) : super(key: key);

  String? name;
  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("You typed-\n${widget.name}",
                          style: TextStyle(fontSize: 35)),
                    ),
                  );
                },
              );
            },
            child: const Text("CLICK")),
        //child: Text("${widget.name}", style: TextStyle(fontSize: 35)),
      ),
    );
  }
}
