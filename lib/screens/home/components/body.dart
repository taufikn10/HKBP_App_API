import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/list/list_kegiatan.dart';
import 'package:hkbp_app/screens/menu/alkitab/alkitab_page.dart';
import 'package:hkbp_app/screens/menu/belanja/belanja_page.dart';
import 'package:hkbp_app/screens/menu/berita/berita_page.dart';
import 'package:hkbp_app/screens/menu/donasi/donasi_page.dart';
import 'package:hkbp_app/screens/menu/ibadah/ibadah_page.dart';
import 'package:hkbp_app/screens/menu/kegiatan/kegiatan_page.dart';
import 'package:hkbp_app/screens/menu/khotbah/kotbah_page.dart';
import 'package:hkbp_app/screens/menu/persembahan/persembahan_page.dart';
import 'package:page_transition/page_transition.dart';

import '../../../fontstyle.dart';

import 'menu_home.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Adi Nugroho",
                    style: txtB18d,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  elevation: 2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 21, horizontal: 16),
                        child: Image.asset(
                          "assets/images/lg_zipay.png",
                          height: 24,
                          width: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Saldo Zipay",
                              style: txtSaldo,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Rp 300.000",
                              style: txtR12g,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/btn_tambah.png",
                            height: 26,
                            width: 26,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/btn_unduh.png",
                          height: 26,
                          width: 26,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/btn_riwayat.png",
                            height: 26,
                            width: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                              ),
                              child: Image.asset(
                                "assets/images/khotbah.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Jamita Minggu - HKBP Balige - Matius 8:23-27",
                                    style: txtR12d,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 115.0,
                            height: 30.0,
                            decoration: const BoxDecoration(
                                gradient: kColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                )),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Khotbah',
                                style: txtSB12w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuHome(
                          icon: "assets/images/ic_bible.png",
                          judul: "Alkitab",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: const AlKitabPage(),
                                  type: PageTransitionType.scale),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_persembahan.png",
                          judul: "Persembahan",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const PersembahanPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_berita.png",
                          judul: "Berita",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const BeritaPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_gereja.png",
                          judul: "Ibadah",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const IbadahPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuHome(
                          icon: "assets/images/ic_donasi.png",
                          judul: "Donasi",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const DonasiPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_belanja.png",
                          judul: "Belanja",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const BelanjaPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_khotbah.png",
                          judul: "Khotbah",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: const KotbahPage(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                        MenuHome(
                          icon: "assets/images/ic_kegiatan.png",
                          judul: "Kegiatan",
                          tap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomLeft,
                                  child: KegiatanPage(kegiatans),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
