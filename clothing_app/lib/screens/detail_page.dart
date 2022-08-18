import 'package:clothing_app/models/catagory_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  Details(this.itemsList);

  final CatagoryList? itemsList;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int selectedIndex = 0;

  ColorTab(Color clr) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: clr,
            border: Border.all(color: Colors.grey)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Color.fromARGB(255, 231, 212, 218),
          ], begin: Alignment.centerLeft, end: Alignment.topRight),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 10,
                      // bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.black,
                          iconSize: 25,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline_rounded),
                              color: Colors.black,
                              iconSize: 25,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    '${widget.itemsList!.cl_name}',
                    style: GoogleFonts.ptSerif(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Text(
                        "4.8",
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 15),
                      ),
                      Text(
                        "(2.6k+ review)",
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36.0),
                          image: DecorationImage(
                              image: AssetImage(
                                "${widget.itemsList!.img}",
                              ),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Select Size",
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 25)),
                  ),
                  Container(
                    height: 45,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sizes.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: selectedIndex == index
                                    ? Colors.orange
                                    : Colors.white,
                                border: Border.all(color: Colors.grey)),
                            child: Text("${sizes[index]}"),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(width: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Select Color",
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 25)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColorTab(Colors.white),
                      ColorTab(Colors.brown),
                      ColorTab(Colors.blueAccent.withOpacity(0.3)),
                      ColorTab(Colors.teal),
                      ColorTab(Colors.grey),
                      ColorTab(Colors.purple.withOpacity(0.2)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${widget.itemsList!.price}",
                            style: GoogleFonts.philosopher(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                fontSize: 30),
                          )),
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
