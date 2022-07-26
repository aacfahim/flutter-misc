import 'package:flutter/material.dart';
import 'package:food_delivery_app_foodpanda_clone/models/food_item.dart';
import 'package:food_delivery_app_foodpanda_clone/models/restaurant_data.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, this.data}) : super(key: key);

  final RestaurantData? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        flexibleSpace: Image(
          image: NetworkImage("${data!.img}"),
          fit: BoxFit.cover,
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("${data!.name}",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Row(
          children: [
            Icon(Icons.timer, color: Colors.red),
            SizedBox(width: 5),
            Text("Delivery: 40 min")
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                trailing: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage("${items[index].img}"),
                        fit: BoxFit.cover,
                      ),
                    )),
                title: Text("${items[index].name}"),
                subtitle: Text("${items[index].price} BDT"),
              );
            })
      ]),
    );
  }
}
