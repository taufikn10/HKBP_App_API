import 'package:flutter/material.dart';
import 'package:hkbp_app/components/backbar.dart';

import 'components/body_confirm.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: BackBar(),
      body: BodyConfirm(),
    );
  }
}
