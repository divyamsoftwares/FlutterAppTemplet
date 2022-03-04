import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  static String routeName = 'CheckOut';

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final _formKey = GlobalKey<FormState>();
  final _form = GlobalKey<FormState>();
  final _Key = GlobalKey<FormState>();

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
                  child: Image(
                    image: AssetImage('assets/image/coolicon.png'),
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
                position: BadgePosition.topEnd(top: 17, end: 0),
                badgeContent: Text(
                  '2',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                child: ImageIcon(
                  AssetImage("assets/image/Group 1.png"),
                  color: Color(0xFF8E9193),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
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
                          decoration: InputDecoration(
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
                              borderSide: const BorderSide(
                                color: Color(0xFF8E9193),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Expanded(
                child: Dismissible(
                  key: _formKey,
                  background: deleteItem(),
                  child: Container(
                    // width: 315,
                    height: 94,
                    decoration: BoxDecoration(
                        color: Color(0xFF2B313A),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Container(
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                              color: Color(0xFFCFD2DA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 25),
                          child: Column(
                            children: [
                              Text(
                                " Clifton",
                                style: TextStyle(
                                    color: Color(0xFF8E9193), fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "\$660",
                                style: TextStyle(
                                    color: Color(0xFFF8CCAF), fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Dismissible(
                key: _form,
                onDismissed: (direction) {},
                background: deleteItem(),
                child: Expanded(
                  child: Container(
                    //   width: 315,
                    height: 94,
                    decoration: BoxDecoration(
                        color: Color(0xFF2B313A),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Container(
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFF0F0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 25),
                          child: Column(
                            children: [
                              Text(
                                " Analogue",
                                style: TextStyle(
                                    color: Color(0xFF8E9193), fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "\$660",
                                style: TextStyle(
                                    color: Color(0xFFF8CCAF), fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Dismissible(
                key: _Key,
                onDismissed: (direction) {},
                background: deleteItem(),
                child: Expanded(
                  child: Container(
                    // width: 315,
                    height: 94,
                    decoration: BoxDecoration(
                        color: Color(0xFF2B313A),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Container(
                          height: 94,
                          width: 94,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFF0F0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 25),
                          child: Column(
                            children: [
                              Text(
                                " Wristwatch",
                                style: TextStyle(
                                    color: Color(0xFF8E9193), fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "\$760",
                                style: TextStyle(
                                    color: Color(0xFFF8CCAF), fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Number of Product  :",
                    style: TextStyle(fontSize: 16, color: Color(0xFF8E9193)),
                  ),
                  Text(
                    "3 pcs",
                    style: TextStyle(fontSize: 16, color: Color(0xFFF8CCAF)),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 30,
              endIndent: 30,
              color: Color(0xFF8E9193),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount  :",
                    style: TextStyle(fontSize: 16, color: Color(0xFF8E9193)),
                  ),
                  Text(
                    "\$970.00 ",
                    style: TextStyle(fontSize: 16, color: Color(0xFFF8CCAF)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 25, top: 35),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 56,
                  width: 315,
                  decoration: BoxDecoration(
                      color: Color(0xFFF8CCAF),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text(
                      "Proceed to checkout",
                      style: TextStyle(
                        color: Color(0xFF161616),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deleteItem() {
    return Container(
      height: 94,
      decoration: BoxDecoration(
          color: Color(0xFFF8CCAF),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Image(
            image: AssetImage('assets/image/delete.png'),
          ),
        ),
      ),
    );
  }
}
