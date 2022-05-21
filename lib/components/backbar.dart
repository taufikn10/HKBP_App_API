import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class BackBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const BackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
      ),
      elevation: 0,
      backgroundColor: const Color(0xffFFFFFF),
    );
  }
}
