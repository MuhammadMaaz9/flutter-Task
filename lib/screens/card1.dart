

import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var scaffold = Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        child: Center(
          child: Text(
            'Add to Cart',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        height: 0.06 * height,
        width: 0.9 * width,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 35, 104, 161),
            borderRadius: BorderRadius.all(Radius.circular(40))),
      ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 35, 104, 161),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                height: 0.4 * height,
                width: width,
                child: Image.asset(
                  'assets/Image1.png',
                ),
              ),
              Positioned(
                  bottom: 0.025 * height,
                  child: Icon(
                    Icons.zoom_in,
                    color: Color.fromARGB(255, 35, 104, 161),
                    size: 35,
                  )),
              Positioned(
                  right: 0,
                  bottom: 0.001 * height,
                  child: Container(
                    height: 0.1 * height,
                    width: 0.1 * width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 35, 104, 161),
                    ),
                  )),
            ],
          ),
          Container(
            height: 0.3 * height,
            color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Enfamil A+2 800G Baby Milk Powder',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 35, 104, 161),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Med johson',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Rs. 5572/Pack',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        maxLines: 7,
                        'Its a dietary supplement, not organic milk. Enfamil A+ stage 02(suitable for babies of 06-12 months)contains all healthy ingredients (i.e vitamins,minerals, carbohydrates, protien, DHA/ARA,) which are important for babies growth, and brain',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('READ MORE')),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 0.001 * height,
          ),
          Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Precautions',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 104, 161),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 35, 104, 161),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    return scaffold;
  }
}
