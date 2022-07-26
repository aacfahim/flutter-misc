import 'package:flutter/material.dart';
import 'package:food_delivery_app_foodpanda_clone/models/restaurant_data.dart';
import 'package:food_delivery_app_foodpanda_clone/screens/detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(children: [
            Text("Home", style: TextStyle(color: Colors.black)),
            Text("Food delivery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400))
          ]),
          actions: [
            Icon(
              Icons.favorite_outline,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Icon(Icons.shopping_bag_outlined, color: Colors.red)
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color.fromARGB(255, 230, 230, 230)),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      // TextField(
                      //   controller: searchController,
                      //   decoration: InputDecoration(
                      //     hintText: "Search for restaurants, cuisines, and more...",
                      //   ),
                      // ),
                      Text(
                        "Search for restaurants, cuisines, and more...",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.tune, color: Colors.red)
              ]),
              SizedBox(height: 5),
              Text("For You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Expanded(
                flex: 3,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: restaurantList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(data: restaurantList[index]),
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.2,
                              // width: 200,
                              // height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${restaurantList[index].img}"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Text("${restaurantList[index].name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text("${restaurantList[index].type}"),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 10),
              Text("Most Popular",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.red[600])),
              Expanded(
                flex: 1,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: restaurantList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(data: restaurantList[index]),
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.1,
                              // width: 200,
                              // height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${restaurantList[index].img}"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Text("${restaurantList[index].name}",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text("${restaurantList[index].type}"),
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
