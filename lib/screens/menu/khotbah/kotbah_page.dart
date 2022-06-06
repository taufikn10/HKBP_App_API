import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_video.dart';
import 'package:hkbp_app/models/khotbah/video.dart';
import 'package:hkbp_app/screens/menu/khotbah/components/body_khotbah.dart';

import '../topbar_menu.dart';

class KotbahPage extends StatefulWidget {
  const KotbahPage({Key? key}) : super(key: key);

  @override
  State<KotbahPage> createState() => _KotbahPageState();
}

class _KotbahPageState extends State<KotbahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const TopBarMenuIcons(
          txtTitle: 'Khotbah',
          iconData1: Icons.history,
          iconData2: Icons.bookmark_border_rounded,
          txtKitab:
              '“Sebab kamu tahu, bahwa kamu telah ditebus dari hidupmu yang sia-sia kamu warisi dari nenek moyang mu itu bukan dengan barang yang fanam bukan pula dengan perak atau emas”',
          subTitle: 'Petrus 1:18',
        ),
        body: const BodyKhotbah());
  }
}
