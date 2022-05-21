import 'package:flutter/material.dart';
import 'package:hkbp_app/screens/register/pin/components/body_repeat_pin.dart';

import '../../../components/backbar.dart';

class RepeatPinPage extends StatefulWidget {
  const RepeatPinPage({Key? key}) : super(key: key);

  @override
  State<RepeatPinPage> createState() => _RepeatPinState();
}

class _RepeatPinState extends State<RepeatPinPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: BackBar(),
      body: BodyRepeatPin(),
    );
  }
}
