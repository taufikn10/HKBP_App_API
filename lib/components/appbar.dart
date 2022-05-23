import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String textHeader;
  final String textSub;
  @override
  Size get preferredSize => const Size.fromHeight(65);

  const TopBar({
    Key? key,
    required this.textHeader,
    required this.textSub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_rounded, color: darkColor),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textHeader,
            style: txtSB16d,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            textSub,
            style: txtR12d,
          )
        ],
      ),
    );
  }
}
