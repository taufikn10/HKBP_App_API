import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/topbar_menu.dart';

import 'components/body_donasi.dart';

class DonasiPage extends StatefulWidget {
  const DonasiPage({Key? key}) : super(key: key);

  @override
  State<DonasiPage> createState() => _DonasiPageState();
}

class _DonasiPageState extends State<DonasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarMenuIcons(
        txtTitle: 'Donasi',
        iconData1: Icons.history,
        iconData2: Icons.bookmark_outline_rounded,
        txtKitab:
            '“Demikianlah hendaknya terangmu bercahaya di depan orang, supaya mereka melihat perbuatanmu yang baik dan memuliakan Bapamu yang di sorga”',
        subTitle: 'Matius 5:16',
      ),
      body: const BodyDonasi(),
    );
  }
}
