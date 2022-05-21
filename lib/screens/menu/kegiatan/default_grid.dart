import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/list/list_kegiatan.dart';
import 'package:hkbp_app/screens/menu/kegiatan/components/card_default.dart';
import 'package:hkbp_app/screens/menu/kegiatan/details/detail_kegiatan.dart';
import 'package:hkbp_app/screens/menu/topbar_menu.dart';

class KegiatanPageDefault extends StatefulWidget {
  const KegiatanPageDefault({Key? key}) : super(key: key);

  @override
  State<KegiatanPageDefault> createState() => _KegiatanPageDefaultState();
}

class _KegiatanPageDefaultState extends State<KegiatanPageDefault> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarMenuIcons(
          txtTitle: "Kegiatan",
          iconData1: Icons.history,
          iconData2: Icons.bookmark_border_rounded,
          txtKitab:
              "“Akan hal ini aku yakin sepenuhnya, yaitu Ia, yang memulai pekerjaan yang baik di antara kamu , akan meneruskan sampai pada akhirnya pada hari Kristus Yesus”",
          subTitle: "Filipi 1:6"),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: kegiatans.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: (screenWidth - 30 - 15) / (2 * 280),
                  ),
                  itemBuilder: (context, index) => BuildCardDefault(
                    kegiatan: kegiatans[index],
                    tap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailKegiatan(kegiatan: kegiatans[index]))),
                    pressBtn: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailKegiatan(kegiatan: kegiatans[index]))),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
