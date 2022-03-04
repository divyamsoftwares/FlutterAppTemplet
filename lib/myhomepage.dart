import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  static String routeName = '/homepage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Container(
                  child: Positioned(
                    left: 0,
                    right: 93.65,
                    top: 17.48,
                    bottom: 17.48,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.grid_view_rounded),
                    ),
                  ),
                ),
              );
            },
          ),
          actions: [
            Positioned(
              left: 17.24,
              right: 18.92,
              top: 12.2,
              bottom: 0,
              child: Image.asset('assets/image/coolicon (2).png'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Badge(
                  badgeColor: Color(0xFFF8CCAF),
                  position: BadgePosition.topEnd(top: 20, end: 0),
                  badgeContent: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  child: ImageIcon(AssetImage('assets/image/Group 1.png'))),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(children: [
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: Container(
                        width: 246,
                        height: 55,
                        margin: EdgeInsets.only(
                          top: 0,
                          left: 0,
                        ),
                        decoration: BoxDecoration(
                          //  color: Color(0xFF1E2228),
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: Expanded(
                            child: TextField(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Color(0xFF8E9193),
                                fontSize: 20,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF8E9193),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18.0),
                                  ))),
                        ))))),
            Positioned(
                width: 55,
                height: 55,
                left: 260,
                top: 0,
                child: Padding(
                    padding: const EdgeInsets.only(
                      right: 30,
                    ),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF8E9193)),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: IconButton(
                          icon: ImageIcon(AssetImage('assets/image/img.png')),
                          //  icon: Icon(Icons.linear_scale),
                          onPressed: () {},
                        ))))
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Positioned(
              width: 249,
              height: 68,
              left: 0,
              top: 7,
              child: Row(
                children: [
                  Text(
                    "Hello,Choose Your \nBest Watch",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Positioned(
                    child: Container(
                      width: 258,
                      height: 110,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "for her",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF8CCAF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 258,
                    height: 110,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "for her",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8CCAF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Row(
              children: [
                Text(
                  "BestSellers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 60),
                  child: Row(
                    children: [
                      Container(
                        width: 167,
                        height: 137,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF0F0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 20,
                                      color: Colors.grey,
                                    ))),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Text(
                                  "Clifton",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "\$360.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 167,
                        height: 137,
                        decoration: BoxDecoration(
                          color: Color(0xFFCFD2DA),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 20,
                                      color: Colors.grey,
                                    ))),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Text(
                                  "Analogue",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "\$960.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  )))
        ])));
  }
}
