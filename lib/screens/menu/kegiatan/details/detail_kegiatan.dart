import 'package:flutter/material.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/models/kegiatan_tile.dart';

import 'components/body_detail.dart';

class DetailKegiatan extends StatefulWidget {
  final Kegiatan kegiatan;
  const DetailKegiatan({Key? key, required this.kegiatan}) : super(key: key);

  @override
  State<DetailKegiatan> createState() => _DetailKegiatanState();
}

class _DetailKegiatanState extends State<DetailKegiatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarDetails(
        txtTitle: 'Rincian Details',
        color: Colors.transparent,
      ),
      body: BodyDetail(
        kegiatan: widget.kegiatan,
      ),
    );
  }
}
