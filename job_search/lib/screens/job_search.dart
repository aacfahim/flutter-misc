import "package:flutter/material.dart";

class JobSearch extends StatelessWidget {
  JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.all(25.0),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/search_bg.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fast Search",
                    style: TextStyle(color: Colors.white, fontSize: 35)),
                SizedBox(height: 10),
                Text("You can search quickly for\nthe job you want",
                    style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Search",
                    fillColor: Colors.white,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
