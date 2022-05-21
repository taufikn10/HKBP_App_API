import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/appbar.dart';
import 'package:hkbp_app/screens/menu/belanja/components/appbar_img.dart';
import 'package:hkbp_app/screens/menu/belanja/components/body.dart';

class BelanjaPage extends StatefulWidget {
  const BelanjaPage({Key? key}) : super(key: key);

  @override
  State<BelanjaPage> createState() => _BelanjaPageState();
}

class _BelanjaPageState extends State<BelanjaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const AppbarImg(
        txtTitle: "Belanja",
        imgIcon: AssetImage("assets/images/ic_transaction.png"),
      ),
      body: const BodyBelanja(),
    );
  }
}
