import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TabControllerBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  final Widget bottom;
  const TabControllerBar({
    Key? key,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: const Color(0xffF9F9FB),
      elevation: 0,
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: bottom,
      ),
      title: Text(
        "Alkitab",
        style: txtSM16d,
      ),
    );
  }
}
