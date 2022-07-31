import "package:flutter/material.dart";

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Text("Welcome, home", style: TextStyle(fontSize: 20)),
            Text("Annie Bryant",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
        Container(
          child: Row(
            children: [
              Stack(
                children: [
                  Transform.rotate(
                    angle: -0.5,
                    child: Icon(Icons.notifications_none_outlined,
                        size: MediaQuery.of(context).size.width * .08),
                  ),
                  Positioned(
                      left: 20,
                      bottom: 25,
                      child:
                          CircleAvatar(backgroundColor: Colors.red, radius: 4))
                ],
              ),
              SizedBox(width: 4),
              ClipOval(
                child: Image.asset("assets/images/avatar.png",
                    width: MediaQuery.of(context).size.width * .099),
              )
            ],
          ),
        )
      ]),
    );
  }
}
