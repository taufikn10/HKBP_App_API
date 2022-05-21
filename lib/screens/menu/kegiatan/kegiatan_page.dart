import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/kegiatan_tile.dart';
import 'package:hkbp_app/screens/menu/kegiatan/components/card.dart';
import 'package:hkbp_app/screens/menu/topbar_menu.dart';

class KegiatanPage extends StatefulWidget {
  const KegiatanPage(this.kegiatan, {Key? key}) : super(key: key);

  final List<Kegiatan> kegiatan;

  @override
  State<KegiatanPage> createState() => _KegiatanPageState();
}

class _KegiatanPageState extends State<KegiatanPage> {
  @override
  Widget build(BuildContext context) {
    var oddList = <Kegiatan>[];
    var evenList = <Kegiatan>[];
    widget.kegiatan.asMap().forEach((key, value) {
      key.isEven ? evenList.add(value) : oddList.add(value);
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarMenuIcons(
        txtTitle: "Kegiatan",
        iconData1: Icons.history,
        iconData2: Icons.bookmark_border_rounded,
        txtKitab:
            "“Akan hal ini aku yakin sepenuhnya, yaitu Ia, yang memulai pekerjaan yang baik di antara kamu , akan meneruskan sampai pada akhirnya pada hari Kristus Yesus”",
        subTitle: "Filipi 1:6",
      ),
      body: Background(
        child: Scrollable(
          physics: const ClampingScrollPhysics(),
          viewportBuilder: (_, viewportOffset) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Viewport(
                  axisDirection: AxisDirection.down,
                  offset: viewportOffset,
                  slivers: oddList
                      .map((el) => SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 24, right: 8),
                              child: VirtualCard(el),
                            ),
                          ))
                      .toList(),
                ),
              ),
              Flexible(
                flex: 1,
                child: Viewport(
                  axisDirection: AxisDirection.down,
                  offset: viewportOffset,
                  slivers: evenList
                      .asMap()
                      .map(
                        (key, el) => MapEntry(
                          key,
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: key == 0 ? 24 : 0,
                                  right: 24,
                                  bottom: 5,
                                  left: 8),
                              child: Column(
                                children: [
                                  VirtualCard(el),
                                  const SizedBox(
                                    height: 21,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .values
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
