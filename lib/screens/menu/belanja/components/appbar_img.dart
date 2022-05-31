import 'package:flutter/material.dart';
import 'package:hkbp_app/components/navbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:page_transition/page_transition.dart';

class AppbarImg extends StatelessWidget implements PreferredSizeWidget {
  final String txtTitle;
  final dynamic imgIcon;

  @override
  Size get preferredSize => const Size.fromHeight(50);
  const AppbarImg({
    Key? key,
    required this.txtTitle,
    required this.imgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.push(
          context,
          PageTransition(
              alignment: Alignment.bottomLeft,
              child: const Navbar(),
              type: PageTransitionType.fade),
        ),
      ),
      backgroundColor: whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        txtTitle,
        style: txtSB16d,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: ImageIcon(
              imgIcon,
              color: darkColor,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
