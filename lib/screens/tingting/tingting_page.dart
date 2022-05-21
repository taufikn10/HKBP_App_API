import 'package:flutter/material.dart';
import 'package:hkbp_app/screens/tingting/components/topbar_tingting.dart';

import 'components/body_tingting.dart';

class TingtingPage extends StatefulWidget {
  const TingtingPage({Key? key}) : super(key: key);

  @override
  State<TingtingPage> createState() => _TingtingPageState();
}

class _TingtingPageState extends State<TingtingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarTingting(txtTitle: "Tingting"),
      body: BodyTingting(),
    );
  }
}
