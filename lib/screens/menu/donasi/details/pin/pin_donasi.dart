import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_pin.dart';

class PinDonasi extends StatefulWidget {
  const PinDonasi({Key? key}) : super(key: key);

  @override
  State<PinDonasi> createState() => _PinDonasiState();
}

class _PinDonasiState extends State<PinDonasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const BackBar(),
      body: const BodyPin(),
    );
  }
}
