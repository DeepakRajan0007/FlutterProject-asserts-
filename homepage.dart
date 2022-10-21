import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "assets/images/hotdog.jpg",
    "assets/images/ice.jpg",
    "assets/images/fish.jpg",
    "assets/images/chocolate.jpg",
    "assets/images/chicken.jpg",
  ];
  List<String> catexts = [
    "American",
    "Desert(Ice)",
    "Fry(Fish)",
    "Desert(Choco)",
    "Fry(chicken)",
  ];
  List<String> altexts = [
    "Hot Dog",
    "Ice cream",
    "Fish",
    "Chocalate",
    "Chiken",
  ];
  List<String> alratings = [
    "5.0",
    "4.7",
    "3.9",
    "4.6",
    "4.4",
  ];
  List<String> alqty = [
    "33",
    "45",
    "56",
    "78",
    "67",
  ];
  String username = "DEEPAK";
  int startingIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/backscreen.jpg",
                scale: 1.6,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 70, 0, 0),
                child: Text(
                  "HELLO  ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 100, 0, 0),
                child: Text(
                  "$username",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ////////
              ///
              Padding(
                padding: const EdgeInsets.fromLTRB(310, 80, 0, 0),
                child: Image.asset(
                  "assets/images/search.png",
                  scale: 6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(370, 80, 0, 0),
                child: Image.asset(
                  "assets/images/rating.png",
                  scale: 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 200, 0, 0),
                child: FlutterToggleTab(
                  labels: const ["Breakfast", "Lunch", "Dinner"],
                  selectedIndex: startingIndex,
                  selectedLabelIndex: (i) {
                    setState(() {
                      startingIndex = i;
                    });
                  },
                  width: 80,
                  borderRadius: 30,
                  height: 40,
                  selectedBackgroundColors: const [Colors.white],
                  selectedTextStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  unSelectedTextStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 195, 229),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 275, 0, 0),
                  child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      height: 900,
                      width: 800,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 270, 0),
                            child: Text(
                              "Categories",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 67, 38),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    child: SizedBox(
                                      height: 140,
                                      child: GridView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: images.length,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            childAspectRatio: 1 / 1,
                                            mainAxisSpacing: 10,
                                          ),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                print(index);
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0),
                                                child: Container(
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Image.asset(
                                                          images[index],
                                                          fit: BoxFit.cover,
                                                          scale: 0.5,
                                                          color: Color.fromARGB(
                                                                  255,
                                                                  156,
                                                                  137,
                                                                  137)
                                                              .withOpacity(0.8),
                                                          colorBlendMode:
                                                              BlendMode.darken,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                10, 110, 0, 10),
                                                        child: Text(
                                                          catexts[index],
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 19,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              decoration:
                                                                  TextDecoration
                                                                      .none),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 455, 10, 50),
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: 600,
                  width: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 270, 0),
                        child: Text(
                          "All Menu",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 70, 70),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Expanded(
                          child: startingIndex == 0
                              ? Column(children: [
                                  Container(
                                    height: 565,
                                    width: 350,
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return Card(
                                            elevation: 10,
                                            margin: EdgeInsets.fromLTRB(
                                                10, 0, 0, 20),
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(12),
                                                  child: Image.asset(
                                                    images[index],
                                                    fit: BoxFit.cover,
                                                    scale: 3,
                                                    color: Color.fromARGB(
                                                            255, 230, 214, 214)
                                                        .withOpacity(0.8),
                                                    colorBlendMode:
                                                        BlendMode.darken,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          140, 10, 0, 20),
                                                  child: Text(
                                                    altexts[index],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          140, 40, 0, 20),
                                                  child: Text(
                                                    altexts[index],
                                                    style: const TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        180, 200, 0, 0),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/star.jpg",
                                                          scale: 15,
                                                        ),
                                                        Text(
                                                          " " +
                                                              alratings[index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 18),
                                                        ),
                                                      ],
                                                    )),
                                                Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        270, 210, 0, 20),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Qty: " +
                                                              alqty[index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ])
                              : Container()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {}, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mic_none_outlined, color: Colors.black),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline, color: Colors.black),
          label: "",
        ),
      ]),
    );
  }
}