import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color AccentColor = Color(0xffE2136E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: AccentColor,
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1)),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Ashfaq Afzal Chowdhury",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: AccentColor,
                    radius: 12,
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Tap for Balance",
                    style: TextStyle(color: AccentColor, fontSize: 15),
                  ),
                ],
              ),
            )
          ]),
          actions: [
            Icon(
              Icons.emoji_events,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                "images/logo.png",
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding:
                  const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
              height: MediaQuery.of(context).size.height * .25,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.send_to_mobile,
                                size: 50, color: Color(0xffFBDDDE)),
                            Text("Send Money"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.mobile_friendly,
                                size: 50, color: Color(0xff71A68A)),
                            Text("Mobile Recharge"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.money_off,
                                size: 50, color: Color(0xff187F7B)),
                            Text("Cash Out"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.mobile_friendly,
                                size: 50, color: Color(0xffB183BA)),
                            Text("Make Payment"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.add, size: 50, color: Color(0xffFBDDDE)),
                            Text("Add Money"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.lightbulb,
                                size: 50, color: Color(0xff5C7369)),
                            Text("Pay Bill"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.savings,
                                size: 50, color: Color(0xffA65C90)),
                            Text("Savings"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.clean_hands,
                                size: 50,
                                color: Color.fromARGB(255, 225, 206, 171)),
                            Text("Loan"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.money,
                                size: 50, color: Color(0xffFBDDDE)),
                            Text("Transfer Money"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.cast_for_education,
                                size: 50, color: Color(0xff71A68A)),
                            Text("Education"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.money_off,
                                size: 35, color: Color(0xff187F7B)),
                            Text("Remittance"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.credit_card,
                                size: 50, color: Color(0xff95C3B6)),
                            Text("Loan"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.money,
                                size: 50, color: Color(0xffFBDDDE)),
                            Text("Transfer Money"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.cast_for_education,
                                size: 50, color: Color(0xff71A68A)),
                            Text("Education"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.money_off,
                                size: 35, color: Color(0xff187F7B)),
                            Text("Remittance"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.credit_card,
                                size: 50, color: Color(0xff95C3B6)),
                            Text("Loan"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My bKash"),
                  Text(
                    "See All",
                    style: TextStyle(color: AccentColor),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [Icon(Icons.save_rounded), Text("Saved Bills")],
                    ),
                    Column(
                      children: [Icon(Icons.favorite), Text("Priyo Numbers")],
                    ),
                    Column(
                      children: [
                        Icon(Icons.mobile_friendly),
                        Text("018*******1")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.mobile_friendly),
                        Text("017*******2")
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/offer.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          )
        ],
      ),
    );
  }
}
