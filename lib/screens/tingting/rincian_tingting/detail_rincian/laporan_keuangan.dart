import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/screens/menu/appbar.dart';

class LaporanKeuanganPage extends StatefulWidget {
  const LaporanKeuanganPage({Key? key}) : super(key: key);

  @override
  State<LaporanKeuanganPage> createState() => _LaporanKeuanganPageState();
}

class _LaporanKeuanganPageState extends State<LaporanKeuanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbarr(
        txtTitle: "Laporan Keuangan",
        icon: Icons.download,
      ),
      body: Background(
          child: InteractiveViewer(
        clipBehavior: Clip.none,
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/laporan_keuangan.png",
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
