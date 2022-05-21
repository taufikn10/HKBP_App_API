import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/kegiatan_tile.dart';
import 'package:hkbp_app/screens/menu/kegiatan/details/detail_kegiatan.dart';

class VirtualCard extends StatelessWidget {
  final Kegiatan kegiatan;

  const VirtualCard(
    this.kegiatan, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      elevation: 5,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailKegiatan(kegiatan: kegiatan))),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  child: Image.asset(
                    kegiatan.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 105,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Text(
                    kegiatan.title,
                    style: txtR12d,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 4),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 9, right: 7),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 11,
                        ),
                      ),
                      Text(
                        kegiatan.location,
                        style: txtR10d,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 9, right: 7),
                      child: Icon(
                        Icons.schedule,
                        size: 11,
                      ),
                    ),
                    Text(
                      kegiatan.date,
                      style: txtR10d,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 55, vertical: 9),
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailKegiatan(kegiatan: kegiatan))),
                    child: Text(
                      "Daftar",
                      style: txtM12w,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Icon(
              Icons.bookmark_outline_rounded,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
