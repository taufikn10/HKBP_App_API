import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';

import 'components/body_success.dart';

class PendaftaranBerhasil extends StatefulWidget {
  const PendaftaranBerhasil({Key? key}) : super(key: key);

  @override
  State<PendaftaranBerhasil> createState() => _PendaftaranBerhasilState();
}

class _PendaftaranBerhasilState extends State<PendaftaranBerhasil> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBarDetails(
        txtTitle: "Rincian Jadwal",
      ),
      body: BodySuccess(),
    );
  }
}
