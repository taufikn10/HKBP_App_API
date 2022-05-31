import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/components/topbar.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/belanja/belanja_page.dart';
import 'package:hkbp_app/screens/menu/belanja/components/line_lightgrey.dart';
import 'package:hkbp_app/screens/menu/dashline.dart';

class SuccessBuyPage extends StatefulWidget {
  const SuccessBuyPage({Key? key}) : super(key: key);

  @override
  State<SuccessBuyPage> createState() => _SuccessBuyPageState();
}

class _SuccessBuyPageState extends State<SuccessBuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const TopBarDetails(
        txtTitle: "Belanja",
        color: Colors.transparent,
      ),
      body: Background(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          elevation: 0.5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Text(
                                  "Pembayaran Berhasil",
                                  style: txtSB14gn,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 16),
                                child: DashLineView(
                                  fillRate: 0.7,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Ringkasan Belanja",
                                            style: txtSB14d,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 16, bottom: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Total Harga",
                                                style: txtR14g,
                                              ),
                                              Text(
                                                "Rp 261.000",
                                                style: txtR14d,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Potongan",
                                                style: txtR14g,
                                              ),
                                              Text(
                                                "Rp 0",
                                                style: txtR14d,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const LineLightgrey(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Potongan",
                                                style: txtR14g,
                                              ),
                                              Text(
                                                "Rp 0",
                                                style: txtR14d,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const DashLineView(
                                    fillRate: 0.7,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "ID. Transaksi",
                                              style: txtSB14d,
                                            ),
                                            Text(
                                              "202204015C",
                                              style: txtR14d,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 16, bottom: 8),
                                          child: Text(
                                            'Keterangan:',
                                            style: txtSB12d,
                                          ),
                                        ),
                                        Text(
                                          'Barang belanjaan dapat diambil pada gereja terdaftar!',
                                          style: txtR12d,
                                        )
                                      ],
                                    ),
                                  ),
                                  const DashLineView(
                                    fillRate: 0.7,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff5A6BFF)
                                          .withOpacity(0.2),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Text(
                                        "Tuhan Yesus Memberkati",
                                        style: txtSB12d,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent.withOpacity(0),
                    margin:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 24),
                    child: RoundedButton(
                      child: StyleBtn(
                          txtBtn: "Kembali Belanja",
                          pressBtn: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BelanjaPage()));
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Image.asset(
                  "assets/images/ic_check.png",
                  height: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
