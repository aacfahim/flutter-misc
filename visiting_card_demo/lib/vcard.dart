import 'package:flutter/material.dart';

class Vcard extends StatelessWidget {
  const Vcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 43, 43),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C5603AQFzbRz4xYuMmg/profile-displayphoto-shrink_800_800/0/1637077511702?e=1661990400&v=beta&t=9FgvUxogBxsrfwKgyegDIFkV7cqnXfg_RQ9D_jn1Qnc"),
                ),
              ),
              Text(
                "Ashfaq Afzal Chowdhury",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Wannabe App Developer",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                color: Colors.yellow,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 10),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                tileColor: Color.fromARGB(255, 131, 131, 131),
                leading: Icon(Icons.email),
                title: Text(
                  "aac.ashfaq@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                tileColor: Color.fromARGB(255, 131, 131, 131),
                leading: Icon(Icons.phone),
                title: Text(
                  "017xxxxxxx54",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                tileColor: Color.fromARGB(255, 131, 131, 131),
                leading: Icon(Icons.pin_drop),
                title: Text(
                  "Mirpur Dhaka 1216, Bangladesh",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://cutt.ly/aKMdQNb"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://cutt.ly/hKMdbYR"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://cutt.ly/uKMdVRA"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add_card),
                    Text(
                      "ADD CONTACT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
