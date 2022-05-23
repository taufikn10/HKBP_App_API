import 'package:flutter/material.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_ibadah.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String txtTitle;
  final dynamic icon;
  final String txtTanggal;

  @override
  Size get preferredSize => const Size.fromHeight(100);
  const Appbar({
    Key? key,
    required this.txtTitle,
    required this.icon,
    required this.txtTanggal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? _selectedIndex;

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
        style: txtSB16d,
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.calendar_today_outlined),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xffCACACA),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _selectedIndex == null
                            ? Text(
                                txtTanggal,
                                style: txtR12l,
                              )
                            : Text(
                                listJadwal[_selectedIndex].toString(),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
