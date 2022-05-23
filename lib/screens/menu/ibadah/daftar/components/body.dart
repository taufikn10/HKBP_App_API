// ignore_for_file: deprecated_member_use

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hkbp_app/components/background.dart';
import 'package:hkbp_app/components/rounded_btn.dart';
import 'package:hkbp_app/fontstyle.dart';
import 'package:hkbp_app/screens/menu/ibadah/daftar/components/cardnote.dart';
import 'package:hkbp_app/screens/menu/ibadah/daftar/components/txtfield.dart';
import 'package:hkbp_app/screens/menu/ibadah/daftar/success/sucess_ibadah.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController inputNamaPeserta = TextEditingController();
  bool _showNama = true;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Background(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                          color: const Color(0xffFFFFFF),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Sabtu, 3 September 2022',
                                      style: txtSB14d,
                                    ),
                                  ),
                                ),
                                Row(
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
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 4, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Sisa kuota",
                                        style: txtR12d,
                                      ),
                                      Text(
                                        "12 peserta",
                                        style: txtR12gn,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Keterangan",
                                    style: txtSB14d,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 4),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Nama Peserta",
                                style: txtSB14d,
                              ),
                            ),
                            TxtField(
                              hintTxt: "Adi Nugroho",
                              hintStyle: txtR12d,
                              readOnly: true,
                            ),
                            _showNama
                                ? DottedBorder(
                                    borderType: BorderType.RRect,
                                    radius: const Radius.circular(12),
                                    dashPattern: const [8, 4],
                                    strokeWidth: 1,
                                    color: blueColor,
                                    child: SizedBox(
                                      height: 30,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: blueColor,
                                              size: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6),
                                              child: Text(
                                                "Tambah Peserta",
                                                style: txtSB12b,
                                              ),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  scrollable: true,
                                                  titlePadding:
                                                      const EdgeInsets.only(
                                                          top: 20,
                                                          bottom: 0,
                                                          left: 16,
                                                          right: 16),
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 0,
                                                          bottom: 0,
                                                          left: 16,
                                                          right: 16),
                                                  actionsPadding:
                                                      const EdgeInsets.only(
                                                          top: 0,
                                                          bottom: 20,
                                                          left: 9,
                                                          right: 9),
                                                  title: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                        child: Icon(
                                                          Icons.close_rounded,
                                                          size: 10,
                                                          color: darkColor,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 90),
                                                        child: Text(
                                                          'Nama Peserta',
                                                          style: txtSB14d,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  content: Form(
                                                    child: Column(
                                                      children: [
                                                        TxtField(
                                                          hintTxt:
                                                              "Masukan nama",
                                                          hintStyle: txtR12l,
                                                          readOnly: false,
                                                          controllertxt:
                                                              inputNamaPeserta,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: sizeWidth / 3,
                                                          height: 33,
                                                          child: OutlineButton(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            borderSide: BorderSide(
                                                                color:
                                                                    blueColor),
                                                            onPressed: () =>
                                                                Navigator.of(
                                                                        context)
                                                                    .pop(),
                                                            child: Text(
                                                              "Batalkan",
                                                              style: txtM12b,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 12),
                                                        SizedBox(
                                                          width: sizeWidth / 3,
                                                          height: 33,
                                                          child: ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              primary:
                                                                  blueColor,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "Daftar",
                                                              style: txtM12w,
                                                            ),
                                                            onPressed: () {
                                                              setState(() {
                                                                inputNamaPeserta
                                                                        .text =
                                                                    inputNamaPeserta
                                                                        .text;
                                                              });
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              _showNama =
                                                                  !_showNama;
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: lightGreyColor,
                                      ),
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 9, left: 12, bottom: 9),
                                      child: Text(
                                        inputNamaPeserta.text,
                                        style: txtR12d,
                                      ),
                                    ),
                                  ),
                            const SizedBox(height: 24),
                            const CardNote(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
                  child: RoundedButton(
                      child: StyleBtn(
                          txtBtn: "Daftar",
                          pressBtn: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Success()));
                          })),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
