import 'package:flutter/material.dart';

class SmartWatch1 extends StatefulWidget {
  static String routeName = '/watch';

  @override
  _SmartWatch1State createState() => _SmartWatch1State();
}

class _SmartWatch1State extends State<SmartWatch1>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Color(0XFFF5F5F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: AppBar(
              backgroundColor: Color(0XFFF5F5F5),
              title: const Text(
                'Go Back',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF040404),
                    fontWeight: FontWeight.w400),
              ),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: ImageIcon(
                    AssetImage('assets/image/Fill 63.png'),
                    color: Color(
                      0XFF040404,
                    ),
                    size: 33,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 83),
                  child: IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('assets/image/Shopping Cart Icon.png'),
                        color: Color(0XFF040404),
                      )),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 37, top: 23),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Most Pupular\nSmart Watches',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 32,
                          color: Color(0XFF040404),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: TabBar(
                          indicatorColor: Colors.transparent,
                          controller: _tabcontroller,
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.only(left: 10, right: 10),
                          labelColor: Color(0XFF040404),
                          unselectedLabelColor: Color(0XFFAFAFAF),
                          tabs: const [
                            Tab(
                              child: Text(
                                "Switch to ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Recent ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Recommended",
                                style: TextStyle(
                                    color: Color(0XFF040404),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 37),
                          child: Row(
                            children: [
                              Card(
                                //elevation: 42,
                                child: Container(
                                  height: 384,
                                  width: 232,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade500,
                                          blurRadius: 25.0,
                                          offset: Offset(0.0, 0.75)),
                                    ],
                                    color: Color(0XFFFFFFFF),
                                  ),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 26),
                                        child: Image(
                                            image: AssetImage(
                                                'assets/image/Image (1).png')),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 30, left: 20),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              'Waterproof Smart Watch 3',
                                              style: TextStyle(
                                                  color: Color(0XFF040404),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20),
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 20),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              'Take your favorite music phone-free by storing 300+ songs or downloading…',
                                              style: TextStyle(
                                                  color: Color(0XFFAFAFAF),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16.41),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 26),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade400,
                                          blurRadius: 15.0,
                                          offset: Offset(0.0, 0.75)),
                                    ],
                                  ),
                                  child: Card(
                                    child: Container(
                                      height: 441,
                                      width: 232,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFFFFFFF),
                                      ),
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 26, right: 50),
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/image/Image (3).png')),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 30, left: 20),
                                            child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  'Sports Fitness Bluetooth Watch',
                                                  style: TextStyle(
                                                      color: Color(0XFF040404),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20),
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 20),
                                            child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                  'Track your all-day activity, 24/7 heart rate, & sleep stages — all with a 4+ day battery life. Take your favorite music phone-free by storing 300+ songs…',
                                                  style: TextStyle(
                                                      color: Color(0XFFAFAFAF),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16.41),
                                                )),
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
                        Positioned(
                          left: 20.67,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 220,
                              left: 270,
                            ),
                            child: Container(
                              height: 30,
                              width: 76,
                              decoration: BoxDecoration(
                                color: Color(0XFF2EF5E2),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                  child: Text(
                                '\$ 288.00',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFF040404)),
                              )),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23.67,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 220,
                            ),
                            child: Container(
                              height: 30,
                              width: 76,
                              decoration: BoxDecoration(
                                color: Color(0XFF2EF5E2),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                  child: Text(
                                '\$ 195.00',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0XFF040404)),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 37),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 4,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            // color: Color(0XFF2EF5E2),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 4,
                                  width: 90,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0XFF2EF5E2),
                                  ),
                                  //height: 28,width: 78,
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 40),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 4,
                                  width: 60,
                                  color: Color(0XFFDADCE1),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 40),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            '1  - ' + ' 15',
                            style: TextStyle(
                                color: Color(0XFFAFAFAF),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
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
      ),
    );
  }
}
