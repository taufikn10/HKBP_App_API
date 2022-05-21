import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_tingting.dart';
import 'package:hkbp_app/models/tingting_tile.dart';
import 'package:hkbp_app/screens/tingting/rincian_tingting/rincian_page.dart';

class BodyTingting extends StatelessWidget {
  const BodyTingting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listJadwalTing.length,
                itemBuilder: (context, index) => ListTing(
                  listTing: listJadwalTing[index],
                  tap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RincianTingtingPage(
                                tingting: listJadwalTing[index],
                              ))),
                ),
              ),
              const SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}

class ListTing extends StatelessWidget {
  final Tingting listTing;
  final VoidCallback tap;
  const ListTing({Key? key, required this.listTing, required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                listTing.jadwal,
                style: txtSM12d,
              ),
              Text(
                "Rincian",
                style: txtSM12b,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
