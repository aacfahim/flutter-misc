import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Hotels",
          style: GoogleFonts.lobster(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 10),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hotels For You",
                          style: GoogleFonts.oswald(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.search, color: Colors.blue),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "150 Results",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .09,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img),
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img2),
                            backgroundColor: Colors.transparent,
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img3),
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img4),
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img5),
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img),
                          ),
                          const SizedBox(width: 30),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(img),
                          ),
                          const SizedBox(width: 30),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 3.0,
                      indent: 150,
                      endIndent: 150,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(pool),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Hotel Radisson Blu",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.white38,
                                            child: Icon(
                                              Icons.open_in_full_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "\$600.00",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "Booking ID: 15454541",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.grey, width: 1.0),
                                          ),
                                          child: CircleAvatar(
                                            radius: 20,
                                            child: Column(children: const [
                                              Icon(
                                                Icons.price_check,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                "Price",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                            backgroundColor: Colors.transparent,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ])),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Facilities",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See More",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                              ),
                              child: const Icon(Icons.pool, color: Colors.blue),
                            ),
                            const SizedBox(height: 5),
                            const Text("Swimming Pool"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                              ),
                              child: const Icon(Icons.wifi, color: Colors.red),
                            ),
                            const SizedBox(height: 5),
                            const Text("Wifi"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                              ),
                              child: const Icon(Icons.air, color: Colors.blue),
                            ),
                            const SizedBox(height: 5),
                            const Text("AC"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                              ),
                              child: const Icon(Icons.free_breakfast,
                                  color: Colors.green),
                            ),
                            const SizedBox(height: 5),
                            const Text("Free Breakfast"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                  ]),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: BookNow(),
              ),
            )
          ],
        ),
      ),
    );
  }

  String img =
      "https://99designs-blog.imgix.net/blog/wp-content/uploads/2019/04/attachment_83173576-e1555593549254.png?auto=format&q=60&fit=max&w=930";

  String img2 =
      "https://www.tbsnews.net/sites/default/files/styles/big_2/public/images/2019/12/31/sheraton-tbs.jpg?itok=vOG1u0bL&timestamp=1577788698";
  String img3 =
      "https://pbs.twimg.com/profile_images/782078346821705728/G9FTfdlj_400x400.jpg";

  String img4 = "https://i.dlpng.com/static/png/7089701_preview.png";

  String img5 =
      "https://bhlbd.com/wp-content/uploads/2018/06/Le-Meridien-Logo.jpg";

  String pool =
      "https://www.lincoln.ne.gov/files/sharedassets/public/parks-amp-rec/parks-amp-facilities/facilities/pools/lpr-pool-bel5-2.jpg?dimension=pageimagefullwidth&w=1140";
}

class BookNow extends StatelessWidget {
  const BookNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .6,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[100],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.check),
            ),
            Text(
              "Booking Now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          ]),
    );
  }
}
