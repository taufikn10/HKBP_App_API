import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_ibadah.dart';

import 'components/appbar.dart';
import 'components/bodytile.dart';

class IbadahPage extends StatefulWidget {
  const IbadahPage({Key? key}) : super(key: key);

  @override
  State<IbadahPage> createState() => _IbadahPageState();
}

class _IbadahPageState extends State<IbadahPage> {
  // bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const Appbar(
        txtTitle: "Ibadah",
        icon: CupertinoIcons.tickets,
        txtTanggal: "Pilih Tanggal",
      ),
      body: Background(
          child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: listJadwal
                    .map((tile) => BasicTileWidget(
                          ibadah: tile,
                        ))
                    .toList(),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      )),
    );
  }
}
