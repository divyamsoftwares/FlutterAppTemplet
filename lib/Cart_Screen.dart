import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:watchapp/appbar.dart';
import 'package:watchapp/Cart_Bottombar.dart';

class CartScreen extends StatefulWidget {
  static String routeName = 'cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 15),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Builder(
              builder: (BuildContext context) {
                return Positioned(
                  left: 0,
                  right: 93.65,
                  top: 17.48,
                  bottom: 17.48,
                  child: IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      const AssetImage('assets/image/coolicon.png'),
                    ),
                  ),
                );
              },
            ),
            actions: [
              Row(
                children: [
                  Positioned(
                    left: 17.24,
                    right: 18.92,
                    top: 12.2,
                    bottom: 0,
                    //   child: Image.asset('assets/image/coolicon (2).png'),
                    child: IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          const AssetImage('assets/image/Group 2 (1).png'),
                          color: Color(0XFF8E9193),
                        )),
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Badge(
                      badgeColor: const Color(0xFFF8CCAF),
                      //  position: BadgePosition.topStart(top: 1,start: 20),
                      position: BadgePosition.bottomEnd(bottom: 16.5, end: 9),
                      badgeContent: const Text(
                        '2',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const ImageIcon(
                          const AssetImage('assets/image/Group 1.png'),
                          color: const Color(0XFF8E9193),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: Text(
                              'Analogue Date\n Watch',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'VO3D-GO/LB/WH Regular priceUSD219',
                        style: const TextStyle(color: Color(0xFFF8CCAF)),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0XFF353b43),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ImageIcon(
                          AssetImage('assets/image/Icon1.png'),
                          // Icons.star_border_outlined ,
                          color: Color(0xFFF8CCAF),
                          // size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '4.9',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFF8CCAF),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 7),
                        Text(
                          '(300+ Reviews)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0XFFFFFFFF)),
                        ),

                        // Text()
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Description',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: Color(0XFFFFFFFF)),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'Velit officia consequat duis enim velit\n mollit. Exercitation veniam consequat \nsunt nostrud amet.',
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF8e9193)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
