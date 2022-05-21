import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/screens/menu/appbar.dart';

class JadwalPetugasPage extends StatefulWidget {
  const JadwalPetugasPage({Key? key}) : super(key: key);

  @override
  State<JadwalPetugasPage> createState() => _JadwalPetugasPageState();
}

class _JadwalPetugasPageState extends State<JadwalPetugasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbarr(
        txtTitle: "Jadwal Petugas Pelayanan",
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
                  "assets/images/jadwal_pelayanan.png",
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
