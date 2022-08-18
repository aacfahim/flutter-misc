import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_app/models/catagory_list.dart';
import 'package:clothing_app/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final categoryList = CatagoryList.itemsList();
  final categoryListMen = CatagoryList.itemsMen();
  // bool isSelected = false;
  int _selectedIndex = 0;
  /*void _onItemPressded(index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/

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
          ),
          child: Container(
            //padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
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
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(
                              Icons.menu_sharp,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                                color: Colors.black,
                                iconSize: 25,
                              ),
                              Stack(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add_shopping_cart_rounded),
                                    color: Colors.black,
                                  ),
                                  Positioned(
                                    right: 11,
                                    top: 10,
                                    child: Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(80),
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Find Your Style',
                                style: GoogleFonts.philosopher(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    fontSize: 30)),
                          ),
                          Container(
                            height: 35,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 4),
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: _selectedIndex == index
                                            ? Colors.black
                                            : Colors.white,
                                        border: Border.all(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                          child: Text(
                                        '${category[index]}',
                                        style: TextStyle(
                                            color: _selectedIndex == index
                                                ? Colors.white
                                                : Colors.black),
                                      )),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: CarouselSlider.builder(
                      itemCount: categoryList.length,
                      itemBuilder: (context, index, realIndex) {
                        return productContainer(context, index);
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        height: 600,
                        enlargeCenterPage: true,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.7,
                      )),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Most Popular',
                                style: GoogleFonts.philosopher(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    fontSize: 30,
                                    color: Colors.black)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: GridView.count(
                          scrollDirection: Axis.vertical,
                          crossAxisCount: 2,
                          //mainAxisSpacing: 10,
                          children: List.generate(
                            categoryList.length,
                            (index) => Stack(
                              children: [
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  width: 200,
                                  //height: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '${categoryList[index].img}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container productContainer(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 600,
      width: 400,
      color: Colors.transparent,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 8,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Details(categoryList[index])));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      '${categoryList[index].img}',
                      fit: BoxFit.fill,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${categoryList[index].cl_name}',
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 20),
                      ),
                      Text(
                        '${categoryList[index].price}',
                        style: GoogleFonts.ptSerif(
                            textStyle: TextStyle(fontWeight: FontWeight.bold),
                            fontSize: 25),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
