import 'package:flutter/material.dart';

class SmartWatch extends StatefulWidget {
  static String routeName = "/smartwatch";

  @override
  _SmartWatchState createState() => _SmartWatchState();
}

class _SmartWatchState extends State<SmartWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF040404),
      body: ListView(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 680,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/watch.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Image.asset("assets/image/Fill 62.png")),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Go Back",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 350),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 109,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2EF5E2),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(3),
                                      topRight: Radius.circular(3))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 35, top: 7),
                                child: Text(
                                  "\$ 285.95",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "35% Discount",
                                style: TextStyle(color: Color(0xFFAFAFAF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Smart Watch + \nFitness Tracker",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 32),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, top: 30),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Track Your all-day activity,24/7 heart rate,&       ",
                                  style: TextStyle(color: Color(0xFFAFAFAF)),
                                ),
                                Text(
                                    "sleep stage-all with a 4+ day battery life.           ",
                                    style: TextStyle(color: Colors.white54)),
                                Text(
                                    "Take your favorite music phone free by storing",
                                    style: TextStyle(color: Colors.white38)),
                                Text(
                                    "300+songs or downloading stations from...      ",
                                    style: TextStyle(color: Colors.white24))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45, top: 680),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.outlined_flag,
                                  color: Color(0xFF2EF5E2),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "GPS, Glonass,Galileo,and QZSS",
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Color(0xFF2EF5E2),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Electrical heart sensor-ECG app",
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF), fontSize: 14),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 800),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add to Cart",
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF2EF5E2),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Image.asset("assets/image/cart1.png"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
