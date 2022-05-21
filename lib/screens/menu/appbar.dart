import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class Appbarr extends StatelessWidget implements PreferredSizeWidget {
  final String txtTitle;
  final dynamic icon;

  @override
  Size get preferredSize => const Size.fromHeight(50);
  const Appbarr({
    Key? key,
    required this.txtTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        txtTitle,
        style: txtSM16d,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              icon,
              color: darkColor,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
