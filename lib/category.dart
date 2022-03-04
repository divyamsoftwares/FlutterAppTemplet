import 'package:flutter/material.dart';
import 'package:watchapp/appbar.dart';




class Category extends StatefulWidget {
  static String routeName = '/category';

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 15),
          child: AppBarScreen(),
        ),
      ),
      //bottomNavigationBar:BottomBar1(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 13),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 299,
                        height: 55,
                        margin: EdgeInsets.only(top: 15, right: 13, left: 13),
                        padding: const EdgeInsets.symmetric(
                            vertical: 1, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(
                                width: 29,
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    labelStyle: TextStyle(color: Colors.white),
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      new BorderSide(color: Colors.grey),
                                      borderRadius:
                                      new BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      new BorderSide(color: Colors.grey),
                                      borderRadius:
                                      new BorderRadius.circular(15),
                                    ),
                                  ),
                                  onChanged: (String keyword) {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 17),
                      child: Container(
                        width: 57,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.transparent),
                        child: IconButton(
                          icon: ImageIcon(AssetImage('assets/image/img.png')),
                          //  icon: Icon(Icons.linear_scale),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          child: Text(
                            'Top Watch Brands',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 37,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0XFF2B313A),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(child: Text('All')),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 37,
                            // width: 9,
                            decoration: BoxDecoration(
                              // color: Colors.deepOrange.shade100,
                              color: Color(0xFFF8CCAF),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                                child: Text(
                                  'For him',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 37,
                            width: 90,
                            decoration: const BoxDecoration(
                              color: Color(0XFF2B313A),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                                child: Text(
                                  'For her',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 37,
                            width: 92,
                            decoration: BoxDecoration(
                              color: Color(0XFF2B313A),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                                child: Text(
                                  'Limited',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 137,
                                width: 143,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0XFFFFF0F0)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.grey.shade500,
                                            size: 20,
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 27),
                                            child: Text(
                                              'Clifton',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            '\$360.00',
                                            style: TextStyle(
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 26),
                              Container(
                                height: 137,
                                width: 143,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0XFFCFD2DA)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.grey.shade500,
                                            size: 20,
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              'Clifton',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            '\$360.00',
                                            style: TextStyle(
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 60),
                          Row(
                            children: [
                              Container(
                                height: 137,
                                width: 143,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0XFFFFF0F0)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.grey.shade500,
                                            size: 20,
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              'Clifton',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            '\$360.00',
                                            style: TextStyle(
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 26),
                              Container(
                                height: 137,
                                width: 143,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0XFFCFD2DA)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.grey.shade500,
                                            size: 20,
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              'Clifton',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            '\$360.00',
                                            style: TextStyle(
                                              color: Colors.black,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
