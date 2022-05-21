import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_success.dart';

class SuccessDonasi extends StatefulWidget {
  const SuccessDonasi({Key? key}) : super(key: key);

  @override
  State<SuccessDonasi> createState() => _SuccessDonasiState();
}

class _SuccessDonasiState extends State<SuccessDonasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(txtTitle: "Rincian Jadwal"),
      body: const BodySuccess(),
    );
  }
}
