import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/icons.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/tingting/tingting_page.dart';

import '../screens/home/home_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int activeNav = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      floatingActionButton: getFooter(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: getBody(),
    );
  }

// NAVIGATION CONTROLLER
  Widget getBody() {
    return IndexedStack(
      index: activeNav,
      children: const [
        HomePage(),
        Background(child: Text("Qr Scan")),
        TingtingPage(),
      ],
    );
  }

// ICON CONTROLLER
  Widget getFooter() {
    List items = [
      Icons.home_outlined,
      Icons.qr_code,
      MyIcons.icon_cross,
    ];
    List txtItems = [
      "Beranda",
      "Qr Scan",
      "Tingting",
    ];
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xfFFFFFFF),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                items.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        activeNav = index;
                      });
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Icon(
                            items[index],
                            size: 25,
                            color: activeNav == index ? blueColor : darkColor,
                          ),
                        ),
                        Text(
                          txtItems[index],
                          style: TextStyle(
                            color: activeNav == index ? blueColor : darkColor,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
