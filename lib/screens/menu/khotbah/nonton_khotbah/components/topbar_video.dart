import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TopBarVideo extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(290);

  final String txtTitle;
  final dynamic color;
  final Widget video;

  const TopBarVideo({
    Key? key,
    required this.txtTitle,
    this.color,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: color,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        txtTitle,
        style: txtSB16d,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(350),
        child: video,
      ),
    );
  }
}
