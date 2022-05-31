import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_success.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Rincian Jadwal",
        color: Colors.transparent,
      ),
      body: const BodySuccess(),
    );
  }
}
