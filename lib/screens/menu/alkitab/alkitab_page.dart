// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/models/alkitab/alkitab.dart';

import 'package:hkbp_app/screens/menu/alkitab/details/details_page.dart';
import 'package:hkbp_app/services/alkitab/service_kitab.dart';

import 'components/box.dart';
import 'components/floating_btn.dart';

class AlKitabPage extends StatefulWidget {
  const AlKitabPage({Key? key}) : super(key: key);

  @override
  State<AlKitabPage> createState() => _AlKitabPageState();
}

class _AlKitabPageState extends State<AlKitabPage> {
  late ScrollController _hideButtonController;
  var _isVisible = true;
  AlkitabService alkitabService = AlkitabService();
  List<Verse> _verses = [];
  late bool _loading;

  _getVerses() async {
    _verses = await alkitabService.getVerses("Kej", 1);
    setState(() {
      _loading = false;
    });
  }

  @override
  initState() {
    super.initState();
    _loading = true;
    _getVerses();
    _hideButtonController = ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible == true) {
          print("**** $_isVisible up"); //Move IO away from setState
          setState(() {
            _isVisible = false;
          });
        }
      } else {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (_isVisible == false) {
            print("**** $_isVisible down"); //Move IO away from setState
            setState(() {
              _isVisible = true;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Alkitab",
        color: Colors.transparent,
      ),
      body: Background(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerBox(
                      size: size * 0.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailKitab()));
                        },
                        child: FutureBuilder<AlKitab>(
                          future: AlkitabService().getKitab("Kej", 1),
                          builder: ((context, snapshot) {
                            {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.title,
                                  style: txtSB14d,
                                  textAlign: TextAlign.center,
                                );
                              } else {
                                return const Center(child: Text(""));
                              }
                            }
                          }),
                        ),
                      ),
                    ),
                    ContainerBox(
                      size: size * 0.1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "TB",
                          style: txtSB16d,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    ContainerBox(
                      size: size * 0.1,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.volume_up_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FutureBuilder<List<Verse>>(
                future: AlkitabService().getTitle("Kej", 1),
                builder: ((context, snapshot) => ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return snapshot.hasData
                          ? Text(snapshot.data![index].content, style: txtSB16d)
                          : const Center(child: Text(""));
                    })),
              ),
            ),
            const SizedBox(height: 8),
            FutureBuilder<AlKitab>(
              future: AlkitabService().getKitab("Kej", 1),
              builder: ((context, snapshot) {
                {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          snapshot.data!.title,
                          style: txtSB16d,
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
              }),
            ),
            Expanded(
              child: _loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      controller: _hideButtonController,
                      itemCount: _verses.length,
                      itemBuilder: ((context, index) => Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8, left: 24, right: 24, top: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(1, -4),
                                          child: Text(
                                            "${_verses[index].verse - 1} ",
                                            textScaleFactor: 0.8,
                                            style: txtSB14dh,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: _verses[index].content,
                                        style: txtR14dh,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: _isVisible,
        child: const FloatingBtn(),
      ),
    );
  }
}
