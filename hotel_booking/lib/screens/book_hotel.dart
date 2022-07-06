import 'package:flutter/material.dart';
import 'package:hotel_booking/main.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hotels"),
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotels for you.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 16),
                          Icon(Icons.edit),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "05 results",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/beach-house-logo-design-template-beach-resort-villa-beach-hotel-logo_98702-711.jpg?w=2000"),
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_QhjZX91GSYOJK-Z7vz7lb02h6WK-jwEKl902dJTIzceUHgYgYHzFZ8sorhiX280bGjM&usqp=CAU"),
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://insights.ehotelier.com/wp-content/uploads/sites/6/2018/05/radisson-blu-logo.jpg"),
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://3.bp.blogspot.com/-UIRINCAqBdg/XnyqcOwsRpI/AAAAAAAAEUI/SZEpTLyFkYgvaKsn4uEqs59qIwntCTppQCLcBGAsYHQ/s1600/Design%2BHotel%2Band%2BResort%2BLogo%2BTemplate.jpg"),
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          "https://cdn.dribbble.com/users/4031439/screenshots/10789004/media/4b07136e303947c2f2075b5b1995cf20.jpg?compress=1&resize=400x300&vertical=top"),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Image.network(
                      "https://theincap.com/wp-content/uploads/2022/05/logo.jpg",
                      //fit: BoxFit.fill,
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                    ),
                    Positioned(
                      right: 15,
                      bottom: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Text(
                          "35% Offer!",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Facilities",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("See All",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.wifi),
                    radius: 25,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.free_breakfast),
                    radius: 25,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.spa_outlined),
                    radius: 25,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.room_service),
                    radius: 25,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.hotel),
                    radius: 25,
                  ),
                ],
              ),
              Container(
                //width: double.infinity,,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.check_box),
                      Text("Book Now",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
