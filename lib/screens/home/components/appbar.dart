import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Syalom,",
          style: txtR14d,
        ),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.person_outline,
              color: Color(0xff444444),
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff444444),
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
