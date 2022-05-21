import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';

import 'components/body_make_pin.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: BackBar(),
      body: BodyPin(),
    );
  }
}
