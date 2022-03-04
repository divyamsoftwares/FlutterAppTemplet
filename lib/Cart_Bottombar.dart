import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20, bottom: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Expanded(
          child: Container(
            height: 56,
            width: 355,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0XFF2B313A),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    //height: 28,width: 78,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Expanded(
                          child: Text(
                            '\$960.00',
                            style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 67.9),
                Expanded(
                  child: Container(
                    height: 56,
                    width: 190,
                    decoration: const BoxDecoration(
                        color: Color(0XFFF8CCAF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        )),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Expanded(
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(
                              color: Color(0XFF1E2228),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
