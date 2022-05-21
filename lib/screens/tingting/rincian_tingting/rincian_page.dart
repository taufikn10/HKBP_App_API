import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/models/tingting_tile.dart';
import 'package:hkbp_app/screens/tingting/rincian_tingting/components/body_rincian.dart';

class RincianTingtingPage extends StatefulWidget {
  final Tingting tingting;
  const RincianTingtingPage({Key? key, required this.tingting})
      : super(key: key);

  @override
  State<RincianTingtingPage> createState() => _RincianTingtingPageState();
}

class _RincianTingtingPageState extends State<RincianTingtingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarDetails(txtTitle: "Rincian Tingting"),
      body: BodyRincianTingting(
        tingting: widget.tingting,
      ),
    );
  }
}
