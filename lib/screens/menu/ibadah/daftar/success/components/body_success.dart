import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/navbar.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/dashline.dart';

class BodySuccess extends StatelessWidget {
  const BodySuccess({
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
                        elevation: 0.2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(
                                "Pendaftaran Berhasil",
                                style: txtSM14gn,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16, bottom: 24),
                              child: DashLineView(
                                fillRate: 0.7,
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
                                      style: txtSM14d,
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
                                        "Ibadah Umum",
                                        style: txtR12d,
                                      ),
                                      Text(
                                        "06:00 - 08:00",
                                        style: txtR12d,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16, left: 16, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Peserta",
                                        style: txtR12d,
                                      ),
                                      Text(
                                        "2 peserta",
                                        style: txtR12d,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8, left: 16),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Keterangan",
                                      style: txtSM14d,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 24, left: 16),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            "1. Maks. umur 60 tahun",
                                            style: txtR12d,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "2. Sudah melakukan vaksin min. 2 kali",
                                          style: txtR12d,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const DashLineView(
                                  fillRate: 0.7,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16, bottom: 8, left: 16),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Peserta",
                                      style: txtSM14d,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 24, left: 16),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            "1. Adi Nugroho",
                                            style: txtR12d,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "2. Vivian Rosalina Sihombing",
                                          style: txtR12d,
                                        ),
                                      ),
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
                                        vertical: 10, horizontal: 16),
                                    child: Text(
                                      "Silahkan melihat tiket aktif pendaftaran kamu pada menu ibadah.",
                                      style: txtM10d,
                                      textAlign: TextAlign.start,
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
            top: MediaQuery.of(context).size.height * 0.01,
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
