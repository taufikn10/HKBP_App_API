import 'package:flutter/material.dart';

import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body.dart';

class DaftarIbadah extends StatefulWidget {
  const DaftarIbadah({Key? key}) : super(key: key);

  @override
  State<DaftarIbadah> createState() => _DaftarIbadahState();
}

class _DaftarIbadahState extends State<DaftarIbadah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Rincian Jadwal",
        color: Colors.transparent,
      ),
      body: const Body(),
    );
  }
}
