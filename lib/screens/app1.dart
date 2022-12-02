
import 'package:flutter/material.dart';
import 'package:interview/screens/card2.dart';

import 'card1.dart';

class App extends StatelessWidget {
  App({super.key});

  List<Map<String, dynamic>> card = [
    {
      'images': 'assets/Image1.png',
      'Price': 'Rs. 5572',
      'Name': 'Enfamil A+2 800G Baby Mil..'
    },
    {
      'images': 'assets/Image2.png',
      'Price': 'Rs. 1680',
      'Name': 'Nan 2 optipro 400G Baby M..'
    },
  ];

  List navigation = [Card1(), Card2()];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 35, 104, 161),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.grey), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_card_outlined, color: Colors.grey),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category, color: Colors.grey),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz, color: Colors.grey),
                label: 'More'),
          ]),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.25 * height,
              child: Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: Container(
                      height: 0.2 * height,
                      color: Color.fromARGB(255, 35, 104, 161),
                    )),
                Positioned(
                  top: 0.16 * height,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 0.1 * height,
                    margin: EdgeInsets.symmetric(horizontal: 18.0),
                    // decoration: BoxDecoration(boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.shade700,
                    //     blurRadius: 30.0,
                    //   )
                    // ]),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Products Here..',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 35, 104, 161)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(35.0)),
                      ),
                    ),
                  ),
                )
              ]),
            ),
            // SizedBox(
            //   height: 0.01 * height,
            // ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0.02 * width),
                  height: 0.25 * height,
                  width: 0.98 * width,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      slider(),
                      SizedBox(
                        width: 0.04 * width,
                      ),
                      slider(),
                      SizedBox(
                        width: 0.05 * width,
                      ),
                      slider(),
                      SizedBox(
                        width: 0.04 * width,
                      ),
                      slider(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.02 * height,
            ),
            Container(
              margin: EdgeInsets.only(left: 0.02 * width),
              child: Row(
                children: [
                  Container(
                    height: 0.2 * height,
                    width: 0.48 * width,
                    child: Card(
                      //margin: EdgeInsets.only(left: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Color.fromARGB(255, 210, 92, 84),
                      //margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.03 * height,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 0.02 * width),
                            child: Text(
                              //maxLines: 3,
                              'place your order instantle within seconds',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 0.02 * height,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 0.2 * height,
                    width: 0.48 * width,
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.03 * height,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 0.02 * width),
                            child: Text(
                              'Got a prescription? Upload and get your meds now!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.02 * height,
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Color.fromARGB(255, 115, 138, 115),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.02 * height,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0.04 * width),
                  child: Text(
                    'Baby Care',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 35, 104, 161)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.02 * height,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: card.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1,
                crossAxisCount: 2,
                mainAxisExtent: 220,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => navigation[index],
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: [
                        Image.asset('${card[index]['images']}'),
                        Center(
                          child: Text(
                            '${card[index]['Name']}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '${card[index]['Price']}',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

Widget slider() => Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 35, 104, 161),
          borderRadius: BorderRadius.circular(15.0)),
      height: 100,
      width: 250,
    );
