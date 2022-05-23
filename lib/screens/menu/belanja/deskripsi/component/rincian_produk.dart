import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class RincianProduk extends StatelessWidget {
  final String namaRincian;
  final String hasilRincian;
  final double space;
  const RincianProduk({
    Key? key,
    required this.namaRincian,
    required this.hasilRincian,
    required this.space,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text(
            namaRincian,
            style: txtR12d,
          ),
          SizedBox(width: space),
          Expanded(
            child: Text(
              hasilRincian,
              style: txtR12d,
            ),
          ),
        ],
      ),
    );
  }
}
