import 'package:clothing_app/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Color.fromARGB(255, 231, 212, 218),
            ], begin: Alignment.centerLeft, end: Alignment.topRight),
            //borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  right: 35,
                  child: Transform.rotate(
                    angle: 6.0,
                    child: DottedLine(
                        direction: Axis.vertical,
                        dashLength: 10,
                        dashGapLength: 10.0,
                        lineLength: 330.0,
                        dashGradient: [Colors.black, Colors.white]),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Transform.rotate(
                    angle: 6.0,
                    child: DottedLine(
                        direction: Axis.vertical,
                        dashLength: 10,
                        dashGapLength: 10.0,
                        lineLength: 550.0,
                        dashGradient: [Colors.black, Colors.white]),
                  ),
                ),
                Column(
                  children: [
                    /* Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 10,
                        )),*/
                    //working for the cover image and black star icon
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 500,
                          width: 400,
                          //color: Colors.grey,
                          child: Transform.rotate(
                            //angle: pi / -15,
                            angle: 6,
                            child: Container(
                              height: 550,
                              width: 450,
                              //color: Colors.white,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Fastacy',
                                        style: GoogleFonts.philosopher(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            fontSize: 40)),
                                  ),
                                  Container(
                                    height: 365,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img1.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Tops',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Container(
                                            height: 2,
                                            width: 20,
                                            color: Colors.deepOrangeAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'T-Shirt',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      'Hoodies',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '126+ Categories',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Colors.black,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Sign Up',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_sharp,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    right: 50,
                    top: 60,
                    child: Transform.rotate(angle: 6, child: Icon(Icons.star))),
                Positioned(
                    right: 90,
                    bottom: 230,
                    child: Text('Classy',
                        style: GoogleFonts.philosopher(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 40))),
                Positioned(
                    right: 100,
                    bottom: 180,
                    child: Row(
                      children: [
                        Text('Fashion',
                            style: GoogleFonts.philosopher(
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                fontSize: 40)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.star_border_outlined,
                          size: 35,
                          color: Colors.orange,
                        )
                      ],
                    )),
                Positioned(
                  bottom: 130,
                  left: 170,
                  child: Row(children: [
                    Container(
                        height: 7,
                        width: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                        )),
                    SizedBox(width: 7),
                    Container(
                        height: 7,
                        width: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        )),
                    SizedBox(width: 7),
                    Container(
                        height: 7,
                        width: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                        )),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
