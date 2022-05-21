import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/alkitab/details/components/tabbar.dart';

import 'components/bodybarview.dart';

class DetailKitab extends StatefulWidget {
  const DetailKitab({Key? key}) : super(key: key);

  @override
  State<DetailKitab> createState() => _DetailKitabState();
}

class _DetailKitabState extends State<DetailKitab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: TabControllerBar(
          bottom: TabBar(
            indicatorColor: darkColor,
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "KITAB",
                    style: txtSM12d,
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "PASAL",
                    style: txtSM12d,
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "AYAT",
                    style: txtSM12d,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const BodyBarView(),
      ),
    );
  }
}
