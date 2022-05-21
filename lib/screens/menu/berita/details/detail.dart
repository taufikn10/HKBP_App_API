import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:getwidget/getwidget.dart';

class DetailsNews extends StatefulWidget {
  final dynamic detail;
  const DetailsNews({Key? key, this.detail}) : super(key: key);

  @override
  State<DetailsNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailsNews> {
  @override
  Widget build(BuildContext context) {
    List details = widget.detail['rincianImg'];
    return Scaffold(
      appBar: const TopBarDetails(txtTitle: "Rincian Berita"),
      body: Background(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    GFCarousel(
                      items: details.map(
                        (url) {
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              child: Image.asset(
                                url,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onPageChanged: (index) {
                        setState(() {
                          index;
                        });
                      },
                      autoPlay: true,
                      hasPagination: true,
                      passiveIndicator: greyColor,
                      activeIndicator: whiteColor,
                      viewportFraction: 1.1,
                    ),
                    Positioned(
                      right: 40,
                      top: 15,
                      child: Icon(
                        Icons.share_outlined,
                        color: whiteColor,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 15,
                      child: Icon(
                        Icons.bookmark_outline,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Text(
                    widget.detail['title'],
                    style: txtSM16d,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text(
                        "Diterbitkan",
                        style: txtM10d,
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          widget.detail['diterbitkan'],
                          style: txtR10d,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    widget.detail['description'],
                    style: txtR14d,
                    textAlign: TextAlign.justify,
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
