import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_pin.dart';

class PinPendaftaran extends StatefulWidget {
  const PinPendaftaran({Key? key}) : super(key: key);

  @override
  State<PinPendaftaran> createState() => _PinPendaftaranState();
}

class _PinPendaftaranState extends State<PinPendaftaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const BackBar(),
      body: const BodyPin(),
    );
  }
}
