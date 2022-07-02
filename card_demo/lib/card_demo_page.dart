import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Call log", style: GoogleFonts.roboto()),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Center(
            child: Theme(
              data: Theme.of(context).copyWith(accentColor: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See other app calls here",
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Icon(Icons.toggle_on, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person1"),
                  subtitle: Text("GP"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 28, 2022 (Yesterday)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person2"),
                  subtitle: Text("Robi"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 28, 2022 (Yesterday)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person1"),
                  subtitle: Text("GP"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 27, 2022 (2 days ago)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person3"),
                  subtitle: Text("WhatsApp"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 27, 2022 (2 days ago)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person3"),
                  subtitle: Text("N/A"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 27, 2022 (2 days ago)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person6"),
                  subtitle: Text("Messenger"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 27, 2022 (2 days ago)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person3"),
                  subtitle: Text("WhatsApp"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
              Text(
                "June 21, 2022 (8 days ago)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                // shadowColor: Colors.grey,
                // elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Person4"),
                  subtitle: Text("Aalap"),
                  trailing: Icon(Icons.phone, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          null;
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.dialpad),
      ),
    );
  }
}
