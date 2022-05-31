import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';

import 'components/body_rincian.dart';

class RincianDonasi extends StatefulWidget {
  final dynamic donasiImg;
  const RincianDonasi({Key? key, this.donasiImg}) : super(key: key);

  @override
  State<RincianDonasi> createState() => _RincianDonasiState();
}

class _RincianDonasiState extends State<RincianDonasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Rincian Donasi",
        color: Colors.transparent,
      ),
      body: BodyRincianDonasi(
        donasiImg: widget.donasiImg,
      ),
    );
  }
}
