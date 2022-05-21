import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_pin.dart';

class PinPembayaranPage extends StatefulWidget {
  const PinPembayaranPage({Key? key}) : super(key: key);

  @override
  State<PinPembayaranPage> createState() => _PinPembayaranPageState();
}

class _PinPembayaranPageState extends State<PinPembayaranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const BackBar(),
      body: const BodyPin(),
    );
  }
}
