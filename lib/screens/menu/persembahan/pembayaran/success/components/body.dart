import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/navbar.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/dashline.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
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
                              padding: EdgeInsets.only(top: 16, bottom: 24),
                              child: DashLineView(
                                fillRate: 0.5,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Sabtu, 3 September 2022",
                                      style: txtSB14d,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 4, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Jenis Persembahan",
                                        style: txtR12d,
                                      ),
                                      Text(
                                        "Ucapan Syukur",
                                        style: txtR12d,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 24, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Jumlah",
                                        style: txtR12d,
                                      ),
                                      Text(
                                        "Rp 2.000.000",
                                        style: txtR12d,
                                      ),
                                    ],
                                  ),
                                ),
                                const DashLineView(
                                  fillRate: 0.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24, bottom: 8, left: 16),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Keterangan",
                                      style: txtSB12d,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 24, left: 16),
                                  child: Text(
                                    "Bersyukur Saya sudah selesai melakukan peneguhan sidi",
                                    style: txtR12d,
                                  ),
                                ),
                                const DashLineView(
                                  fillRate: 0.5,
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
                        txtBtn: "Kembali Ke Beranda",
                        pressBtn: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navbar()));
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
    );
  }
}
