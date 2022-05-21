import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class MenuHome extends StatelessWidget {
  final String icon;
  final String judul;
  final dynamic tap;
  const MenuHome({
    Key? key,
    required this.icon,
    required this.judul,
    this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 60,
          ),
          Text(
            judul,
            style: txtR12d,
          ),
        ],
      ),
    );
  }
}
