import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TopBarMenuIcons extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);

  final String txtTitle;
  final IconData iconData1;
  final IconData iconData2;
  final String txtKitab;
  final String subTitle;

  const TopBarMenuIcons({
    Key? key,
    required this.txtTitle,
    required this.iconData1,
    required this.iconData2,
    required this.txtKitab,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        txtTitle,
        style: txtSB16d,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              iconData1,
              color: const Color(0xff444444),
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              iconData2,
              color: const Color(0xff444444),
              size: 24,
            ),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
          child: Column(
            children: [
              Text(
                txtKitab,
                style: txtR12d,
                textAlign: TextAlign.justify,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  subTitle,
                  style: txtR12Id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
