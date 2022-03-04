import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:watchapp/Cart_Screen.dart';
import 'package:watchapp/appbar.dart';
import 'package:watchapp/Cart_Bottombar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:watchapp/category.dart';
import 'package:watchapp/check_out.dart';
import 'package:watchapp/myhomepage.dart';
import 'package:watchapp/smart_watch.dart';
import 'package:watchapp/watch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch App',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0XFF1E2228),
          brightness: Brightness.dark),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        CartScreen.routeName: (ctx) => CartScreen(),
        CheckOut.routeName: (ctx) => CheckOut(),
        MyHomePage.routeName: (ctx) => MyHomePage(),
        SmartWatch.routeName: (ctx) => SmartWatch(),
        SmartWatch1.routeName: (ctx) => SmartWatch1(),
        Category.routeName: (ctx) => Category(),
        Home.routeName: (ctx) => Home(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.routeName);
                },
                child: Text('Set 1'),
              ),
              SizedBox(height: 15),
              OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SmartWatch.routeName);
                },
                child: Text('Set 2'),
              ),
              SizedBox(height: 15),
              OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SmartWatch1.routeName);
                },
                child: Text('Set 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    MyHomePage(),
    Category(),
    CheckOut(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0XFF2B313A),
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF8CCAF),
                    child: ImageIcon(
                      AssetImage('assets/image/Vector.png'),
                      color: Colors.black,
                    ),
                  ),
                  label: '',
                  icon: Positioned(
                    left: 4.83,
                    right: 87.59,
                    top: 28,
                    bottom: 28.58,
                    child: ImageIcon(
                      AssetImage(
                        'assets/image/Vector.png',
                      ),
                      size: 30,
                    ),
                  )),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF8CCAF),
                    child: Positioned(
                      width: 22,
                      height: 22,
                      left: 94,
                      top: 14,
                      child: ImageIcon(
                        AssetImage('assets/image/apps.png'),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  label: '',
                  icon: Positioned(
                    width: 22,
                    height: 22,
                    left: 94,
                    top: 14,
                    child: ImageIcon(
                      AssetImage(
                        'assets/image/apps.png',
                      ),
                      size: 30,
                    ),
                  )),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF8CCAF),
                    child: ImageIcon(
                      AssetImage('assets/image/abc.png'),
                      color: Colors.black,
                    ),
                  ),
                  label: '',
                  icon: Positioned(
                    left: 4.83,
                    right: 87.59,
                    top: 28,
                    bottom: 28.58,
                    child: ImageIcon(
                      AssetImage(
                        'assets/image/abc.png',
                      ),
                      size: 30,
                    ),
                  )),
              BottomNavigationBarItem(
                  activeIcon: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xFFF8CCAF),
                    child: ImageIcon(
                      AssetImage('assets/image/Cart.png'),
                      color: Colors.black,
                    ),
                  ),
                  label: '',
                  icon: Positioned(
                    left: 4.83,
                    right: 87.59,
                    top: 28,
                    bottom: 28.58,
                    child: ImageIcon(
                      AssetImage(
                        'assets/image/Cart.png',
                      ),
                      size: 30,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
