import 'package:flutter/material.dart';

import '../fontstyle.dart';

class TopBarDetails extends StatelessWidget implements PreferredSizeWidget {
  final String txtTitle;
  const TopBarDetails({
    Key? key,
    required this.txtTitle,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        txtTitle,
        style: txtSM16d,
      ),
    );
  }
}
