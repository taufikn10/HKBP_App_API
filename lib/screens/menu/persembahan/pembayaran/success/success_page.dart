import 'package:flutter/material.dart';

import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body.dart';

class SuccessPay extends StatefulWidget {
  const SuccessPay({Key? key}) : super(key: key);

  @override
  State<SuccessPay> createState() => _SuccessState();
}

class _SuccessState extends State<SuccessPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Rincian Jadwal",
      ),
      body: const Body(),
    );
  }
}
