import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/ibadah_tile.dart';
import 'package:hkbp_app/screens/menu/ibadah/daftar/daftar_ibadah.dart';

class BasicTileWidget extends StatefulWidget {
  final Ibadah ibadah;

  const BasicTileWidget({
    Key? key,
    required this.ibadah,
  }) : super(key: key);

  @override
  State<BasicTileWidget> createState() => _BasicTileWidgetState();
}

class _BasicTileWidgetState extends State<BasicTileWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    final jadwal = widget.ibadah.jadwal;
    final jam = widget.ibadah.jam;
    final rincian = widget.ibadah.rincian;

    if (rincian.isEmpty) {
      return ListTile(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              jadwal!,
              style: txtR12d,
            ),
            const Spacer(),
            Text(
              jam!,
              style: txtR12d,
            ),
            const SizedBox(width: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: blueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DaftarIbadah()));
              },
              child: Text(
                "Daftar",
                style: txtM10w,
              ),
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              elevation: 3,
              child: Column(
                children: [
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Row(
                        children: [
                          Text(
                            jadwal!,
                            style: txtSM14d,
                          ),
                          Text(
                            jam!,
                            style: txtSM14d,
                          ),
                        ],
                      ),
                      trailing: Icon(
                        _customTileExpanded
                            ? Icons.keyboard_arrow_down_rounded
                            : Icons.keyboard_arrow_right_rounded,
                      ),
                      children: rincian
                          .map((tile) => BasicTileWidget(
                                ibadah: tile,
                              ))
                          .toList(),
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}
