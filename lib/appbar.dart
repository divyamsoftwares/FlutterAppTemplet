import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              icon: ImageIcon(
                AssetImage('assets/image/coolicon.png'),
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
                  icon: ImageIcon(
                    AssetImage('assets/image/coolicon (2).png'),
                    color: Color(0XFF8E9193),
                  )),
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Badge(
                badgeColor: Color(0xFFF8CCAF),
                //  position: BadgePosition.topStart(top: 1,start: 20),
                position: BadgePosition.bottomEnd(bottom: 16.5, end: 9),
                badgeContent: Text(
                  '2',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage('assets/image/Group 1.png'),
                    color: Color(0XFF8E9193),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
